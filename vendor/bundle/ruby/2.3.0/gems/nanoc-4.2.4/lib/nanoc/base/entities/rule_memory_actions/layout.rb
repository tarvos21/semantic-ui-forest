module Nanoc::Int::RuleMemoryActions
  class Layout < Nanoc::Int::RuleMemoryAction
    # layout '/foo.erb'
    # layout '/foo.erb', params

    attr_reader :layout_identifier
    attr_reader :params

    def initialize(layout_identifier, params)
      @layout_identifier = layout_identifier
      @params = params
    end

    def serialize
      [:layout, @layout_identifier, Nanoc::Int::Checksummer.calc(@params)]
    end

    def to_s
      "layout #{@layout_identifier.inspect}, #{@params.inspect}"
    end
  end
end
