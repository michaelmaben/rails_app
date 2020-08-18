require "rails_helper"

describe PolicyGeneratorController do
  describe "show" do
    before do
      allow(controller).to receive(:show).and_return(nil)
    end
    it "" do
      get :show, params:{id: "1"}

    end
  end
end
