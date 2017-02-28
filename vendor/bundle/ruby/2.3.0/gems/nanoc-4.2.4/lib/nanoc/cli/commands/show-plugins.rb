summary 'show all available plugins'
aliases :info
usage 'show-plugins [options]'
description <<-EOS
Show a list of available plugins, including filters and data sources.
If the current directory contains a Nanoc web site, the plugins defined in this site will be shown as well.
EOS

module Nanoc::CLI::Commands
  class ShowPlugins < ::Nanoc::CLI::CommandRunner
    def run
      # Check arguments
      if arguments.any?
        raise Nanoc::Int::Errors::GenericTrivial, "usage: #{command.usage}"
      end

      # Get list of plugins (before and after)
      plugins_before = Nanoc::Int::PluginRegistry.instance.all
      site.code_snippets if site
      plugins_after = Nanoc::Int::PluginRegistry.instance.all

      # Divide list of plugins into builtin and custom
      plugins_builtin = plugins_before
      plugins_custom  = plugins_after - plugins_before

      # Find max identifiers length
      plugin_with_longest_identifiers = plugins_after.reduce do |longest, current|
        longest[:identifiers].join(', ').size > current[:identifiers].join(', ').size ? longest : current
      end
      max_identifiers_length = plugin_with_longest_identifiers[:identifiers].join(', ').size

      PLUGIN_CLASS_ORDER.each do |superclass|
        plugins_with_this_superclass = {
          builtin: plugins_builtin.select { |p| p[:superclass] == superclass },
          custom: plugins_custom.select { |p| p[:superclass] == superclass },
        }

        # Print kind
        kind = name_for_plugin_class(superclass)
        puts "#{kind}:"
        puts

        # Print plugins organised by subtype
        [:builtin, :custom].each do |type|
          # Find relevant plugins
          relevant_plugins = plugins_with_this_superclass[type]

          # Print type
          puts "  #{type}:"
          if relevant_plugins.empty?
            puts '    (none)'
            next
          end

          # Print plugins
          relevant_plugins.sort_by { |k| k[:identifiers].join(', ') }.each do |plugin|
            # Display
            puts format(
              "    %-#{max_identifiers_length}s (%s)",
              plugin[:identifiers].join(', '),
              plugin[:class].to_s.sub(/^::/, ''),
            )
          end
        end

        puts
      end
    end

    private

    PLUGIN_CLASS_ORDER = [
      Nanoc::Filter,
      Nanoc::DataSource,
      Nanoc::Extra::Deployer,
    ].freeze unless defined? PLUGIN_CLASS_ORDER

    PLUGIN_CLASSES = {
      Nanoc::Filter          => 'Filters',
      Nanoc::DataSource      => 'Data Sources',
      Nanoc::Extra::Deployer => 'Deployers',
    }.freeze unless defined? PLUGIN_CLASSES

    def name_for_plugin_class(klass)
      PLUGIN_CLASSES[klass]
    end
  end
end

runner Nanoc::CLI::Commands::ShowPlugins
