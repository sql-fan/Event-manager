class Event < ApplicationRecord
  validates :name, :date, presence: true

  belongs_to :creator, class_name: "User"
  has_many :attendees, through: :event_user, source: :user
  has_many :event_users, foreign_key: "event_id"
end
