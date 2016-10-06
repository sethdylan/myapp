require 'rails_helper'

describe Product do
  context "when the product has comments"
end

before  do
  @product = Product.create!(name: "Gypsy Western Shirt")
end

before do
  @user = User.create!(["email"], name: "index_users_on_email", unique: true)
  @user = User.create!(["reset_password_token"], name: "index_users_on_reset_password_token", unique: true)
end


  @product.comments.create!(rating: 1, user: @user, body: "Worst shirt EVER!")
  @product.comments.create!(rating: 3, user: @user, body: "This shirt is ok")
  @product.comments.create!(rating: 5, user: @user, body: "Best shirt EVER!")

  it "returns the average rating of all comments" do
    expect(product.average_rating).to eq "3"
end

context is not valid
  expect(Product.new(description: "Nice shirt")).not_to be_valid
  end
end