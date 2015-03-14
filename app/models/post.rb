class Post < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  belongs_to:category
  belongs_to :group
  has_many :comments
  has_attached_file :image, styles:  { medium: "700x500#", small: "350x250#"  },
  :storage => :dropbox,
  :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
  :dropbox_options => {       
  :path => proc { |style| "#{style}/#{id}_#{image.original_filename}"},
  :unique_filename => true}   
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

