class Post < ActiveRecord::Base
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
  
		def translate
			@post= Post.find(params[:id])
			translator = BingTranslator.new('translate_me_crowd', 'Y6IyeQjchDrGrnJxZWXh7dE77IFyCtGV4vhNj6YkPYE=')
#			@category_id= Category.find_by(name: params[:category]).id
#			
			translated = translator.translate('this is a horse', :from => 'en', :to => 'fr')
			print translated

		end
end