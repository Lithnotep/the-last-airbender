require "rails_helper"

describe AirbenderService do
      it "returns characters data" do

        service = AirbenderService.new
        search = service.get_json("characters")
        expect(search).to be_a Array
        expect(search[0]).to have_key "name"
        expect(search[0]).to have_key "url"
      end
    end
