require 'spec_helper'

describe "messages/index.html.haml" do
  before(:each) do
    assign(:messages, [
      stub_model(Message,
        :sender_id => 1,
        :recipient_id => 2,
        :subject => "Subject",
        :body => "MyText"
      ),
      stub_model(Message,
        :sender_id => 1,
        :recipient_id => 2,
        :subject => "Subject",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of messages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 2.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
