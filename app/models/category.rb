class Category < ActiveRecord::Base
  attr_accessible :css_class, :name
  has_many :entries
end
