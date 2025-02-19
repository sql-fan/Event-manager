class Event < ApplicationRecord
  validates :name, :date, presence: true

  belongs_to :creator, class_name: "User"
  has_many :event_users, foreign_key: "event_id"
  has_many :attendees, through: :event_users, source: :user
end
