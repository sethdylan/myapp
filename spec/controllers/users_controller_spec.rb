 require 'rails_helper'

describe User, :type => :model do
  it "should not validate users without an email address" do
    @user = FactoryGirl.build(:user, email: "not_an_email")
    expect(@user).to_not be_valid
  end
end



describe UsersController, :type => :controller do


  before do
    @user = FactoryGirl.create(:user)

    @user2 = User.create!(email: 'example2@example.com', password: 'example')
  end

  describe 'GET #show' do
     context 'User is logged in' do
     before do
     sign_in @user
     end

     it 'Loads correct user details' do
      get :show, id: @user.id
      expect(response).to have_http_status(200)
      expect(assigns(:user)).to eq @user
    end

       it 'Can only see own page' do
        get :show, id: @user2.id
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(root_path)
      end
    end


     context 'No user is logged in' do
       it 'redirects to login' do
         get :show, id: @user.id
         expect(response).to redirect_to(root_path)
       end
     end
  end

end

