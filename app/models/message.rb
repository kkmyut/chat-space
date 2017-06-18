class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group
  mount_uploader :image, ImageUploader
  validates :image,presence: true, if: :text?
  validates :text,presence: true, if: :image?

  def text?
    text.blank?
  end

  def image?
    image.blank?
  end
end
