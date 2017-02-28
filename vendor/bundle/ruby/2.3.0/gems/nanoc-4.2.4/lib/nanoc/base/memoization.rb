require 'weakref'

module Nanoc::Int
  # Adds support for memoizing functions.
  #
  # @api private
  #
  # @since 3.2.0
  module Memoization
    class Wrapper
      attr_reader :ref

      def initialize(ref)
        @ref = ref
      end

      def inspect
        obj = @ref.object
        if obj
          obj.inspect
        else
          '<garbage collected>'
        end
      end
    end

    class Value
      attr_reader :value

      def initialize(value)
        @value = value
      end
    end

    NONE = Object.new

    # Memoizes the method with the given name. The modified method will cache
    # the results of the original method, so that calling a method twice with
    # the same arguments will short-circuit and return the cached results
    # immediately.
    #
    # Memoization assumes that the current object as well as the function
    # arguments are immutable. Mutating the object or the arguments will not
    # cause memoized methods to recalculate their results. There is no way to
    # un-memoize a result, and calculation results will remain in memory even
    # if they are no longer needed.
    #
    # @example A fast fib function due to memoization
    #
    #     class FibFast
    #
    #       extend Nanoc::Int::Memoization
    #
    #       def run(n)
    #         if n == 0
    #           0
    #         elsif n == 1
    #           1
    #         else
    #           run(n-1) + run(n-2)
    #         end
    #       end
    #       memoize :run
    #
    #     end
    #
    # @param [Symbol, String] method_name The name of the method to memoize
    #
    # @return [void]
    def memoize(method_name)
      original_method_name = '__nonmemoized_' + method_name.to_s
      alias_method original_method_name, method_name

      define_method(method_name) do |*args|
        @__memoization_cache ||= {}
        @__memoization_cache[method_name] ||= {}
        method_cache = @__memoization_cache[method_name]

        value = NONE
        if method_cache.key?(args)
          object = method_cache[args].ref.object
          value = object ? object.value : NONE
        end

        if value.equal?(NONE)
          send(original_method_name, *args).tap do |r|
            method_cache[args] = Wrapper.new(Ref::SoftReference.new(Value.new(r)))
          end
        else
          value
        end
      end
    end
  end
end
