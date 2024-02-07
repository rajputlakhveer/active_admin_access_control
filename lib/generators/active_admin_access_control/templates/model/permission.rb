class Permission < ApplicationRecord
  belongs_to :role

  enum :state, %i(can cannot)

  validates :role, :class_name, :state, :action, presence: true
end
