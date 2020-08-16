class PolicyCreatorController < ApplicationController
  include PolicyCreatorHelper

  def show
    @otherPerson = OtherPerson.find(params[:id])
    @policy = Policy.where(name: "demo").first
    @price = policy_price(@otherPerson, @policy)
  end
end
