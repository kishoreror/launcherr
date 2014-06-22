class Post < ActiveRecord::Base
  belongs_to :user
 has_attached_file :coverimage 
 has_attached_file :logoimage 

 validates_attachment :coverimage, content_type: { content_type: /\Aimage\/.*\Z/ }
 validates_attachment :logoimage, content_type: { content_type: /\Aimage\/.*\Z/ } 
 validates_formatting_of :youtube_id, using: :url
  acts_as_votable 

end
