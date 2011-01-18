require 'spec_helper'

describe "admin/messages/show.html.haml" do
  before(:each) do
    @admin_message = assign(:message, stub_model(Message,
      :sender_id => 1,
      :recipient_id => 1,
      :subject => "Subject",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subject/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
