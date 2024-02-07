require "rails/generators/migration"
require "generators/active_admin_access_control/helper"

module ActiveAdminAccessControl
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      include ActiveAdminAccessControl::Generators::Helper
      source_root File.expand_path("./templates", __dir__)

      def copy_migration_files
        migration_template "migration/create_roles.rb", "db/migrate/create_roles.rb"
        migration_template "migration/create_permissions.rb", "db/migrate/create_permissions.rb"
        migration_template "migration/add_role_to_admin_user.rb", "db/migrate/add_role_to_admin_user.rb"
      end

      def copy_model_file
        template "model/ability.rb", "app/models/ability.rb"
        template "model/role.rb", "app/models/role.rb"
        template "model/permission.rb", "app/models/permission.rb"
      end

      def configure_active_admin
        gsub_file "config/initializers/active_admin.rb",
                  "# config.authorization_adapter = ActiveAdmin::CanCanAdapter",
                  "config.authorization_adapter = ActiveAdmin::CanCanAdapter"
      end

      def configure_seed_file
        gsub_file "config/initializers/active_admin.rb",
                  "# config.authorization_adapter = ActiveAdmin::CanCanAdapter",
                  "config.authorization_adapter = ActiveAdmin::CanCanAdapter"
      end

      def copy_admin_permissions_file
        template "admin/permissions.rb", "app/admin/permissions.rb"
        template "admin/roles.rb", "app/admin/roles.rb"
      end

      def add_to_seed
        append_to_file 'db/seeds.rb', "\n# Automatically added by Active Admin Access Control\n#{seed_data}"
      end

      private

      def seed_data
        <<~SEED
          role = Role.find_or_create_by(name: 'admin')
          AdminUser.find_or_initialize_by(email: 'admin@example.com').tap do |user|
            user.password = 'password'
            user.password_confirmation = 'password' 
            user.role_id = role.id
            user.save!
          end
        SEED
      end
    end
  end
end
