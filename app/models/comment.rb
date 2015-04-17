class Comment < ActiveRecord::Base
 acts_as_voteable
  belongs_to :post
  belongs_to :user
end




