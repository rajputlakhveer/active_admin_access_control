module ActiveAdminAccessControl
  module Generators
    module Helper
      def self.included(klass)
        klass.send :extend, ClassMethods
      end

      private

        module ClassMethods
          # Define the next_migration_number method (necessary for the migration_template method to work)
          def next_migration_number(dirname)
            sleep 1 
            Time.new.utc.strftime("%Y%m%d%H%M%S")
          end
        end
    end
  end
end
