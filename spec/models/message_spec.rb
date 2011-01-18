require 'spec_helper'

module MessageSpecHelper
  def valid_message_attributes
    {
      :sender_id => 1,
      :recipient_id => 2,
      :subject => "New Message",
      :body => "Nice new message body"
    }
  end
end

describe Message do
  include MessageSpecHelper
  
  before(:each) do
    @message = Message.new
  end
  
  it "should be valid with a set of valid attributes" do
    @message.attributes = valid_message_attributes
    @message.should be_valid
  end

  it "should not be valid without a subject" do
    @message.attributes = valid_message_attributes.except(:subject)
    @message.should_not be_valid
    @message.should have(1).error_on(:subject)
  end
  
  it "should belong to a user as sender" do
    @message.should respond_to(:sender)
  end
  
  it "should belong to a user as recipient" do
    @message.should respond_to(:recipient)
  end
end
