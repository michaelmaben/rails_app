module PolicyGeneratorHelper
  def calculate_price(person, policy)
    puts "policy:: #{policy['settings']['base_price']}"
    total_price = base_price = policy['settings']['base_price'].to_i
    total_price += calculate_age_adjusted_price(person, policy)
    total_price += calculate_condition_adjusted_price(person, policy)
    total_price += calculate_bonus_adjusted_price(person, policy)
  end

  def calculate_age_adjusted_price(person, policy)
    puts "KKKK"
    policy_age_setting = policy['settings']['age']
    puts "policy_age_setting:: #{policy['settings']} :: #{policy_age_setting['start']}"
    age_diff = person.age - policy_age_setting['start']
    (age_diff/policy_age_setting['slab'])*policy_age_setting['increment']
  end

  def calculate_condition_adjusted_price(person, policy)
    price_adjusted_with_conditions = 1
    policy_condition_setting = policy['settings']['conditions']

    person.conditions.each do |condition|
      price_adjusted_with_conditions+=policy_condition_setting[condition]
    end
    puts "condition:: #{price_adjusted_with_conditions}"
    price_adjusted_with_conditions
  end

  def calculate_bonus_adjusted_price(person, policy)
    bonus = 0
    bonus += policy.settings['bonuses']['female'] if person.sex == 'female'
    bonus
  end
end
