class Blog < ActiveRecord::Base
  has_attached_file :image, styles: { large: "600x600", medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  belongs_to :category
  has_many :comments, as: :commentable
  extend FriendlyId
  friendly_id :title, use: :slugged
end
