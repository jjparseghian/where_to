class Post < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { thumb: "150x150#", med: "300x300>", large: "600x600>" }
   validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
