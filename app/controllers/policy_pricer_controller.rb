class PolicyPricerController < ApplicationController
  include PolicyPricerHelper
  def show
    @person = Person.find(params[:id])
    @policy = Policy.where(name: "Demo")
    
  end
end
