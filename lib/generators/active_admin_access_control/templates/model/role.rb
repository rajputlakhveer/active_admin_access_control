class Role < ApplicationRecord
	has_many :permissions, dependent: :destroy
	has_many :admin_users, dependent: :destroy

	validates :name, uniqueness: true
end
