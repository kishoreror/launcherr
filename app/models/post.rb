class Post < ActiveRecord::Base
  belongs_to :user
 has_attached_file :coverimage ,:styles => { :medium => "300x300>", :thumb => "100x100>" }
 has_attached_file :logoimage ,:styles => { :medium => "300x300>", :thumb => "100x100>" }
 validates_attachment :coverimage, content_type: { content_type: /\Aimage\/.*\Z/ }
 validates_attachment :logoimage, content_type: { content_type: /\Aimage\/.*\Z/ }

 validates_formatting_of :youtube_id, using: :url
  acts_as_votable 

end
