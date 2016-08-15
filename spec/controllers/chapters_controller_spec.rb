require 'rails_helper'

RSpec.describe ChaptersController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      chapter = FactoryGirl.create(:chapter)
      get :edit, id: chapter.id
      expect(response).to have_http_status(:success)
    end
  end

end
