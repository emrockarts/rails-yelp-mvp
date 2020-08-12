class Review < ApplicationRecord
  belongs_to :restaurant
  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Post destroyed'
  end

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :rating, numericality: { only_integer: true }
end
