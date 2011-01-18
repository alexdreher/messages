require 'spec_helper'

describe "messages/new.html.haml" do
  before(:each) do
    assign(:message, stub_model(Message,
      :sender_id => 1,
      :recipient_id => 1,
      :subject => "MyString",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => messages_path, :method => "post" do
      assert_select "input#message_recipient_id", :name => "message[recipient_id]"
      assert_select "input#message_subject", :name => "message[subject]"
      assert_select "textarea#message_body", :name => "message[body]"
    end
  end
end
