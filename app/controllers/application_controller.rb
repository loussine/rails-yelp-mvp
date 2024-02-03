class ApplicationController < ActionController::Base
end


# class Restaurant < ApplicationRecord
#   has_many :reviews, dependent: :destroy

#   validates :name, presence: true
#   validates :address, presence: true
#   validates :phone_number, presence: true, format: { with: /\A\d{10}\z/ }
#   validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
# end

# class Review < ApplicationRecord
#   belongs_to :restaurant

#   validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
#   validates :content, presence: true
#   validates :restaurant_id, presence: true
# end
