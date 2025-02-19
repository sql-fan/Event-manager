class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events_created, foreign_key: "creator_id", class_name: "Event"
  has_many :event_users, foreign_key: "user_id"
  has_many :attended_events, through: :event_users, source: :event
end
