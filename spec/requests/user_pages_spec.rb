require 'spec_helper'

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
  end
end

