module ActiveScaffoldSortable
  #do not use module Rails... cause Rails.logger will fail
  # not sure if it is a must though...
  #module Rails
    class Engine < ::Rails::Engine
      initializer("initialize_active_scaffold_sortable", :after => "initialize_active_scaffold") do
        ActiveSupport.on_load(:action_controller) do
          require "active_scaffold_sortable/config/core.rb"
          require "active_scaffold_sortable/core.rb"
          ActiveScaffold::Config::Core.send :include, ActiveScaffoldSortable::Core
        end

        ActiveSupport.on_load(:action_view) do
          require "active_scaffold_sortable/view_helpers.rb"
          include ActiveScaffoldSortable::ViewHelpers
        end
      end
    end
  #end
end
