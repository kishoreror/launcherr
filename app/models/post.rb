class Post < ActiveRecord::Base
  belongs_to :user
 has_attached_file :coverimage 

 #validates_formatting_of :youtube_id, using: :url
 # acts_as_votable 

end
