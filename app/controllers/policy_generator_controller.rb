class PolicyGeneratorController < ApplicationController
  include PolicyGeneratorHelper
  def show
    @person = Person.find(params[:id])
    @policy = PolicySetting.first
    @price = calculate_price(@person, @policy)
  end
end
