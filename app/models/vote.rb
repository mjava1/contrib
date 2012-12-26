class Vote < ActiveRecord::Base
  attr_accessible :email, :entry_id, :name
end
