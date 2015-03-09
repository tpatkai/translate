class Post < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  has_many :comments
  has_attached_file :image, styles:  { :medium => "600x400#>", :small => "300x200>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

