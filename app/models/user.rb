class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  #has_many :sent_messages, :class_name => "Message", :foreign_key => "sender_id"
  #has_many :recieved_messages, :class_name => "Message", :foreign_key => "recipient_id"
  
  # TODO: beautify this!
  def messages
    Message.where("sender_id = ? OR recipient_id = ?", id, id)
  end
end
