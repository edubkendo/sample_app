require 'spec_helper'
require 'support/utilities'

describe "UserPages" do
  subject { page }

  describe "signup" do

  	before { visit signup_path }

  	describe "with invalid information" do
  	  it "should not create a user" do
  	    expect { click_button "Sign up" }.not_to change(User, :count)
  	  end
    end

    describe "with valid information" do
      before do
      	fill_in "Name",          with: "Example User"
      	fill_in "Email",         with: "user@example.com"
      	fill_in "Password",      with: "foobar"
      	fill_in "Confirmation",  with: "foobar"
      end

      it "should create a user" do
      	expect { click_button "Sign up" }.to change(User, :count).by(1)
      end
    end

    # describe "error messages" do
    #   before { click_button "Sign up" }

    #   let(:error) { 'errors prohibited this user from being saved' }

    #   it { should have_selector('title', text: 'Sign up') }
    #   it { should have_content(error) }
    # end
  # end

  # describe "edit" do
  #   let(:user) { FactoryGirl.create(:user) }
  #   before do
  #     sign_in user
  #     visit edit_user_path(user)
  #   end

  #   describe "page" do
  #     it "should say Edit user" do
  #      should have_selector('h1',   text: "Edit user")
  #    end
  #     it "should have a link to gravatar" do
  #       should have_link('change', href: 'http://gravatar.com/emails')
  #     end
  #   end

  #   describe "with invalid information" do
  #     let(:error) { '1 error prohibited this user from being saved' }
  #     before { click_button "Update" }

  #     it { should have_content(:error) }
  #   end
   end
 end