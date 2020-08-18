require 'rails_helper'

describe PolicyGeneratorHelper do
  describe "#calculate_age_adjusted_price" do

    let(:person){ Person.new(name: "Susan", age: 25)}

    let(:policy) {PolicySetting.new(name: "T", settings: {
      "age": {
        "slab": 5, "start": 18, "increment": 25
      },
      "bonuses": {"female": 5},
      "base_price": 100,
      "conditions": {
        "heart": 5, "diabetes": 5
      }
    })}


    context "when age is 5 years more than base age" do
      it "it adds 25 to base price" do
        expect(helper.calculate_age_adjusted_price(person, policy)).to eq(25)
      end
    end

    context "when age is base age" do
      let(:person){ Person.new(name: "Susan", age: 18)}
      it "it adds 0 to base price" do
        expect(helper.calculate_age_adjusted_price(person, policy)).to eq(0)
      end
    end

  end
end
