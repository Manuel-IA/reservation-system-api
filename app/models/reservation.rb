class Reservation < ApplicationRecord
  validate :check_limit, on: :create

  belongs_to :restaurant

  private

  def check_limit
    restaurant = self.restaurant
    range = self.date.beginning_of_day..self.date.end_of_day
    reservations = Reservation.where(date: range)
    reservations_by_day = reservations.where(restaurant_id: restaurant.id)

    if reservations_by_day.length >= restaurant.tables
      errors.add(:restaurant_id, "The limit of #{restaurant.tables} reservations per restaurant has been reached")
    elsif reservations.length >= 20
      errors.add(:restaurant_id, 'The limit of 20 reservations per day has been reached')
    end
  end
end
