require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the PolicyEstimatorHelper. For example:
#
# describe PolicyEstimatorHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe PolicyEstimatorHelper, type: :helper do
  describe "#estimate_age_releated_costs" do
    let(:policy){ThirdPolicy.new(
      name:"TP",
      config:{base_price: 10,
        age_conditions:{min_age:18, slab:5, increment:5},
        health_conditions:{diabetes: 0.2, heart: 0.5}}
     )}
    context "when person is older than min_age" do
      let(:person){ThirdPerson.new(name: "Susan", age: 25, conditions:["diabetes"])}
      it "adds additional cost based on slab" do
        expect(helper.estimate_age_releated_costs(person, policy)).to eq(5)
      end
    end
    context "when person is min_age" do
      let(:person){ThirdPerson.new(name: "Susan", age: 18, conditions:["diabetes"])}
      it "adds additional no cost based on slab" do
        expect(helper.estimate_age_releated_costs(person, policy)).to eq(0)
      end
    end
  end
end
