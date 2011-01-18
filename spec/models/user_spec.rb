require 'spec_helper'

describe User do
  it "should have many messages" do
    @user = User.new
    @user.should respond_to(:messages)
  end
end
