require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :address => "Address",
        :join_date => "Join Date",
        :email => "Email"
      ),
      User.create!(
        :name => "Name",
        :address => "Address",
        :join_date => "Join Date",
        :email => "Email"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Join Date".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
