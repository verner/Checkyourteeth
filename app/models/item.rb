class Item < ActiveRecord::Base
  attr_accessible :due, :name, :text, :user_id
  belongs_to :user
end
