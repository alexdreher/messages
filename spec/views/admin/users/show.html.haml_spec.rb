require 'spec_helper'

describe "admin/users/show.html.haml" do
  before(:each) do
    @admin_user = assign(:user, stub_model(User))
  end

  it "renders attributes in <p>" do
    render
  end
end
