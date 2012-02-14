require 'spec_helper'

describe "Authentication" do

  subject { page }

	describe "signin page" do 
		before { visit signin_path }

		it "should have a signin page at '/signin'" do
		  get '/signin'
		  response.should have_selector('title', content: "Sign in")
		end

		# describe "with invalid information" do
		#   before { click_button "Sign in" }

		#   it { should have_selector('div.flash.error', content: 'Invalid') }

		#   describe "after visiting another page" do
		#   	before { click_link "Home" }
		#   	it { should_not have_selector('div.flash.error') }
		#   end
		# end

	 # describe "with valid email and password" do

  #     before(:each) do
  #       @user = Factory(:user)
  #       @attr = { :email => @user.email, :password => @user.password }
  #     end

  #     it "should sign the user in" do
  #       post :create, :session => @attr
  #       controller.current_user.should == @user
  #       controller.should be_signed_in
  #     end

  #     it "should redirect to the user show page" do
  #       post :create, :session => @attr
  #       response.should redirect_to(user_path(@user))
  #     end
  #   end

	end
end
