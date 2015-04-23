class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to:category
  belongs_to :group
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
  has_attached_file :image, styles:  { medium: "700x500#", small: "350x250#"  },
  :storage => :dropbox,
  :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
  :dropbox_options => {       
  :path => proc { |style| "#{style}/#{id}_#{image.original_filename}"},
  :unique_filename => true}   
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
def all_tags=(names)
  self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
  end
end
 
def all_tags
  self.tags.map(&:name).join(", ")
end

def self.tagged_with(name)
  Tag.find_by_name!(name).posts
end

		def translate
			@post= Post.find(params[:id])
			translator = BingTranslator.new('translate_me_crowd', 'Y6IyeQjchDrGrnJxZWXh7dE77IFyCtGV4vhNj6YkPYE=')

			@post.translated = translator.translate('this is a force', :from => 'en', :to => 'fr')
		
			@post.update
		end
end
