class PagesController < ApplicationController

  def home
    @recommended_studios = Studio.where("price <= ?", 10000).limit(3)
    @recent_studios = Studio.limit(3).available_for(Date.today) || Studio.limit(3).order("RANDOM()")
  end
end
