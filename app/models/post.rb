class Post < ApplicationRecord

  has_many :comments
  # validates :title, :content, presence: true
  belongs_to :author, class_name: 'User'

  delegate :name, to: :author, allow_nil: true, prefix: true

  has_attached_file :banner, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :banner, content_type: /\Aimage\/.*\z/
end
