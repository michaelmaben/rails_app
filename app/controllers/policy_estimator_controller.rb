class PolicyEstimatorController < ApplicationController
  include PolicyEstimatorHelper
  def show
    @third_person = ThirdPerson.find(params[:id])
    @third_policy = ThirdPolicy.where(name: "TP").first
    @price = estimate_total_policy_price(@third_person, @third_policy)
    render :show
  end
end
