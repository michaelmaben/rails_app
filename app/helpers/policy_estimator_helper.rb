module PolicyEstimatorHelper
  def estimate_total_policy_price(person, policy)
    total_price = policy.config["base_price"]
    total_price += estimate_age_releated_costs(person, policy)
    total_price += total_price * estimate_health_related_costs(person, policy)
  end

  def estimate_age_releated_costs(person, policy)
    age_related_details = policy.config["age_conditions"]
    age_diff = person.age - age_related_details["min_age"]
    (age_diff/age_related_details["slab"])*age_related_details["increment"]
  end

  def estimate_health_related_costs(person, policy)
    health_details = policy.config["health_conditions"]
    health_constant = 0
    person.conditions.each do |condition|
      health_constant += health_details[condition]
    end
    health_constant
  end
end
