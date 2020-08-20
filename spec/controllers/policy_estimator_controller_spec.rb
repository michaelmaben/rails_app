require "rails_helper"

describe PolicyEstimatorController do
  describe "show" do
    # subject { get :show, params:{id: "1"}}
    let(:policy){ThirdPolicy.new(
      name:"TP",
      config:{base_price: 10,
        age_conditions:{min_age:18, slab:5, increment:5},
        health_conditions:{diabetes: 0.2, heart: 0.5}}
     )}
     let(:person){ThirdPerson.new(name: "Susan", age: 25, conditions:["diabetes"])}

    it "returns a 200 status" do
      allow(ThirdPerson).to receive(:find).and_return(person)
      allow(ThirdPolicy).to receive_message_chain(:where, :first).and_return(policy)
      get :show, params: {id: "id"}
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:show)
      expect(assigns['third_policy']).to eq(policy)
    end
  end
end
