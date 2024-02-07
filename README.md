# ActiveAdminAccessControl

active_admin_access_control is a gem designed to simplify access control management within Active Admin using roles and permissions. It provides an easy way to define roles, assign permissions, and manage user access within the Active Admin panel.

# Features
- Define roles and permissions for users.
- Assign roles to users.
- Manage permissions for each role.
- Access control directly within the Active Admin panel.


## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add active_admin_access_control

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install active_admin_access_control


## Usage

    $ rails generate active_admin_access_control:install
This command will set up the necessary files and configurations for access control.

## Running Migrations
Run the migrations to set up the necessary database tables:

    $ rails db:migrate

## Seed Data
In your seed file (db/seeds.rb), comment out the creation of the default Active Admin admin_user:


    # db/seeds.rb
    # AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Then, run the seed command:


    $ rails db:seed

## Accessing Roles and Permissions
Once everything is set up, you can access roles and permissions within the Active Admin panel. Navigate to the appropriate section to manage roles and assign permissions to users.

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/rajputlakhveer/active_admin_access_control.

## License
The gem is available as open source under the terms of the MIT License.

## Acknowledgments
This gem was inspired by the need for a simple yet powerful access control solution within Active Admin.

## Support
For any questions, issues, or feature requests, please open an issue.

## Author
Lakhveer Singh Rajput
