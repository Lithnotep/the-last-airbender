require "rails_helper"

describe AirbenderService do
      it "returns characters data" do

        service = AirbenderService.new
        search = service.get_json("characters")
        expect(search).to be_a Array
        expect(search[0]).to have_key :_id
        expect(search[0]).to have_key :allies
        expect(search[0]).to have_key :enemies
        expect(search[0]).to have_key :photoUrl
        expect(search[0]).to have_key :name
        expect(search[0]).to have_key :affiliation

      end
    end
