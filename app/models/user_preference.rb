class UserPreference < ActiveRecord::Base
  attr_accessible :kind, :name

  belongs_to :user
end
