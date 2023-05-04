class ReservationMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def confirmation_email
    @reservation = params[:reservation]
    mail(to: @reservation.email, subject: 'Reservation created successfully')
  end

  def confirmation_email_for_admin
    @reservation = params[:reservation]
    @restaurant = @reservation.restaurant
    user = @restaurant.user
    mail(to: user.email, subject: 'New reservation created')
  end
end
