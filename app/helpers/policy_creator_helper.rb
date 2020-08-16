module PolicyCreatorHelper
  def policy_price(otherPerson, policy)
    final_price = 0
    final_price+=policy_age_adjusted_price(otherPerson, policy)
    final_price-= policy_bonus_adjusted_price(otherPerson, policy)
  end

  def policy_age_adjusted_price(otherPerson, policy)
    age_conditions = policy['settings']['age_conditions']
    age_diff = otherPerson.age - age_conditions['start_age']
    (age_diff/age_conditions['slab'] * age_conditions['increment'])
  end

  def policy_health_adjusted_price(otherPerson, policy)
  end

  def policy_bonus_adjusted_price(otherPerson, policy)
    bonus_conditions = policy.settings['bonuses']
    bonus_discount = 0
    bonus_discount += bonus_conditions[otherPerson.gender] if otherPerson.gender == 'female'
  end
end
