class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :accept, :reject]

  def index
    @offers = current_user.offers
  end

  def show
  end

  def accept
    @offer.status = "Accepted"
    @offer.save
    redirect_to :back
  end

  def reject
    @offer.status = "Rejected"
    @offer.save
    redirect_to :back
  end

  private
  def set_offer
    @offer = Booking.find(params[:id])
  end

end
