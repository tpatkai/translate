class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_voter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :comments
  
  # The following line is optional, and tracks karma (up votes) for questions this user has submitted.
  # Each question has a submitter_id column that tracks the user who submitted it.
  # The option :weight value will be multiplied to any karma from that voteable model (defaults to 1).
  # You can track any voteable model.

 # has_karma :votes, :as => :submitter, :weight => 0.5
  # Karma by default is only calculated from upvotes. If you pass an array to the weight option, you can count downvotes as well (below, downvotes count for half as much karma against you):

  #has_karma :downvotes, :as => :submitter, :weight => [ 1, 0.5 ]
end
