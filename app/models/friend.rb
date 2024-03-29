class Friend < ActiveRecord::Base

  attr_accessor :sender, :receiver

  belongs_to :sender, :class_name => "User", :foreign_key => :request_sender_id
  belongs_to :receiver, :class_name => "User", :foreign_key => :request_receiver_id
  
end
