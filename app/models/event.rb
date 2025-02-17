class Event < ApplicationRecord
  validates :name, :date, presence: true
  belongs_to :creator, class_name: "User"
end
