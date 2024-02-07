# frozen_string_literal: true

require_relative "lib/active_admin_access_control/version"

Gem::Specification.new do |spec|
  spec.name = "active_admin_access_control"
  spec.version = ActiveAdminAccessControl::VERSION
  spec.authors = ["Lakhveer Singh Rajput"]
  spec.email = ["rajputlakhveer@gmail.com"]

  spec.summary = "Dynamic Role & Permissions For Active Admin."
  spec.description = "Through the gem you can create the dynamic role and permissions for different types of users to access active admin panel"
  spec.homepage = "https://github.com/rajputlakhveer/active_admin_access_control"
  spec.required_ruby_version = ">= 2.3.0"
  spec.add_dependency "railties"
  spec.files = Dir["lib/**/*", "lib/**/*.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
