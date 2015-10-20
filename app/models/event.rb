class Event < ActiveRecord::Base
  has_many :attendances
  belongs_to :owner, foreign_key: 'user_id', class_name: 'User'
  has_many :users, through: :attendances
  
  validates :lat, presence: true
  validates :lon, presence: true
  validates :name, presence: true
  validates :started_at, presence: true

  reverse_geocoded_by :lat, :lon
end
