require 'spec_helper'

describe "admin/users/index.html.haml" do
  before(:each) do
    assign(:admin_users, [
      stub_model(User),
      stub_model(User)
    ])
  end

  it "renders a list of admin_users" do
    render
  end
end
