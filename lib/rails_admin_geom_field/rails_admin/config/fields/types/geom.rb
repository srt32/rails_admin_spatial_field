module RailsAdmin::Config::Fields::Types
  class Geom < RailsAdmin::Config::Fields::Base
    RailsAdmin::Config::Fields::Types::register(:geom, self)

    def allowed_methods
      [@name]
    end

    def dom_name
      @dom_name ||= "#{bindings[:form].object_name}_#{@name}"
    end
  end
end
