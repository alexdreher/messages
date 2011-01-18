require 'spec_helper'

describe "admin/users/edit.html.haml" do
  before(:each) do
    @admin_user = assign(:user, stub_model(User))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_user_path(@admin_user), :method => "post" do
    end
  end
end
