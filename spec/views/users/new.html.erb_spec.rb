require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :address => "MyString",
      :join_date => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_address[name=?]", "user[address]"

      assert_select "input#user_join_date[name=?]", "user[join_date]"

      assert_select "input#user_email[name=?]", "user[email]"
    end
  end
end
