require 'rails_helper'

describe Product do

  context "when the product has comments" do

    before  do
      @product = Product.create!(name: "Gypsy Western Shirt")
      @user = User.create!(email: "test@test.com", password: "password", first_name: "test1", last_name: "test2")
      @product.comments.create!(rating: 1, user: @user, body: "Worst shirt EVER!")
      @product.comments.create!(rating: 3, user: @user, body: "This shirt is ok")
      @product.comments.create!(rating: 5, user: @user, body: "Best shirt EVER!")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end

    it "is not valid" do
    expect(Product.new(description: "Nice shirt")).not_to be_valid
    end

  end

end