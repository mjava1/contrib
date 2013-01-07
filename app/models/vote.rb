class Vote < ActiveRecord::Base
  attr_accessible :email, :entry_id, :name
  validates_presence_of :email, :entry_id, :name
  validates_uniqueness_of :email
  validates_email_format_of :email

  belongs_to :entry

  before_validation :downcase_email

  def downcase_email
    self.email = self.email.downcase if self.email.present?
  end
end
