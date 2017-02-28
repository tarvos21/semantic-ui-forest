module Nanoc::Helpers
  # Provides functionality for “capturing” content in one place and reusing
  # this content elsewhere.
  #
  # For example, suppose you want the sidebar of your site to contain a short
  # summary of the item. You could put the summary in the meta file, but
  # that’s not possible when the summary contains eRuby. You could also put
  # the sidebar inside the actual item, but that’s not very pretty. Instead,
  # you write the summary on the item itself, but capture it, and print it in
  # the sidebar layout.
  #
  # This helper has been tested with ERB and Haml. Other filters may not work
  # correctly.
  #
  # @example Capturing content for a summary
  #
  #   <% content_for :summary do %>
  #     <p>On this item, Nanoc is introduced, blah blah.</p>
  #   <% end %>
  #
  # @example Showing captured content in a sidebar
  #
  #   <div id="sidebar">
  #     <h3>Summary</h3>
  #     <%= content_for(@item, :summary) || '(no summary)' %>
  #   </div>
  module Capturing
    # @overload content_for(name, params = {}, &block)
    #
    #   Captures the content inside the block and stores it so that it can be
    #   referenced later on. The same method, {#content_for}, is used for
    #   getting the captured content as well as setting it. When capturing,
    #   the content of the block itself will not be outputted.
    #
    #   By default, capturing content with the same name will raise an error if the newly captured
    #   content differs from the previously captured content. This behavior can be changed by
    #   providing a different `:existing` option to this method:
    #
    #   * `:error`: When content already exists and is not identical, raise an error.
    #
    #   * `:overwrite`: Overwrite the previously captured content with the newly captured content.
    #
    #   * `:append`: Append the newly captured content to the previously captured content.
    #
    #   @param [Symbol, String] name The base name of the attribute into which
    #     the content should be stored
    #
    #   @option params [Symbol] existing Can be either `:error`, `:overwrite`, or `:append`
    #
    #   @return [void]
    #
    # @overload content_for(item, name)
    #
    #   Fetches the capture with the given name from the given item and
    #   returns it.
    #
    #   @param [Nanoc::Int::Item] item The item for which to get the capture
    #
    #   @param [Symbol, String] name The name of the capture to fetch
    #
    #   @return [String] The stored captured content
    def content_for(*args, &block)
      if block_given? # Set content
        # Get args
        case args.size
        when 1
          name = args[0]
          params = {}
        when 2
          name = args[0]
          params = args[1]
        else
          raise ArgumentError, 'expected 1 or 2 argument (the name ' \
            "of the capture, and optionally params) but got #{args.size} instead"
        end
        name = args[0]
        existing_behavior = params.fetch(:existing, :error)

        # Capture
        content = capture(&block)

        # Prepare for store
        snapshot_contents = @item.reps[:default].unwrap.snapshot_contents
        capture_name = "__capture_#{name}".to_sym
        case existing_behavior
        when :overwrite
          snapshot_contents[capture_name] = ''
        when :append
          snapshot_contents[capture_name] ||= ''
        when :error
          if snapshot_contents[capture_name] && snapshot_contents[capture_name] != content
            # FIXME: get proper exception
            raise "a capture named #{name.inspect} for #{@item.identifier} already exists"
          else
            snapshot_contents[capture_name] = ''
          end
        else
          raise ArgumentError, 'expected :existing_behavior param to #content_for to be one of ' \
            ":overwrite, :append, or :error, but #{existing_behavior.inspect} was given"
        end

        # Store
        snapshot_contents[capture_name] << content
      else # Get content
        if args.size != 2
          raise ArgumentError, 'expected 2 arguments (the item ' \
            "and the name of the capture) but got #{args.size} instead"
        end
        item = args[0]
        name = args[1]

        rep = item.reps[:default].unwrap

        # Create dependency
        if @item.nil? || item != @item.unwrap
          dependency_tracker = @config._context.dependency_tracker
          dependency_tracker.bounce(item.unwrap)

          unless rep.compiled?
            raise Nanoc::Int::Errors::UnmetDependency.new(rep)
          end
        end

        rep.snapshot_contents["__capture_#{name}".to_sym]
      end
    end

    # Evaluates the given block and returns its contents. The contents of the
    # block is not outputted.
    #
    # @return [String] The captured result
    def capture(&block)
      # Get erbout so far
      erbout = eval('_erbout', block.binding)
      erbout_length = erbout.length

      # Execute block
      yield

      # Get new piece of erbout
      erbout_addition = erbout[erbout_length..-1]

      # Remove addition
      erbout[erbout_length..-1] = ''

      # Depending on how the filter outputs, the result might be a
      # single string or an array of strings (slim outputs the latter).
      erbout_addition = erbout_addition.join if erbout_addition.is_a? Array

      # Done.
      erbout_addition
    end
  end
end
