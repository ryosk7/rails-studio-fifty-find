class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :accept, :reject]

  def index
    @offers = current_user.offers
  end

  def show
  end

  def accept
    @offer.status = "Approved"
    @offer.save
    redirect_to :back
  end

  def reject
    @offer.status = "Rejected"
    @over.save
    redirect_to :back
  end

  private
  def set_offer
    @offer = Booking.find(param[:id])
  end

end
