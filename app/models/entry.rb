class Entry < ActiveRecord::Base
  attr_accessible :caption, :category_id, :email, :image, :name
  validates :caption, :length => { :maximum => 140}
  validates_uniqueness_of :email
  validates_presence_of :caption, :category_id, :email, :image, :name
  validates_email_format_of :email

  belongs_to :category
  mount_uploader :image, ImageUploader
  has_reputation :votes, source: :vote, aggregated_by: :sum

  before_validation :downcase_email

  def downcase_email
    self.email = self.email.downcase if self.email.present?
  end
end
