class Post < ActiveRecord::Base
  belongs_to :user
  has_attached_file :coverimage, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :coverimage, :content_type => /\Aimage\/.*\Z/
 # validates_formatting_of :youtube_id, using: :url
  acts_as_votable 
  
end
