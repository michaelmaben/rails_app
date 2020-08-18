class PolicyGeneratorController < ApplicationController
  include PolicyGeneratorHelper
  def show
    @person = Person.find(params[:id])
    @policy = PolicySetting.first
    puts "PER::#{@person.inspect}"
    puts "POL::#{@policy.inspect}"
    @price = calculate_price(@person, @policy)
  end
end
