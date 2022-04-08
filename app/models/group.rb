class Group < ApplicationRecord
  belongs_to :user
  has_many :patients
  has_one_attached :thumbnail
  validate :acceptable_image

  private
  def acceptable_image
    return unless thumbnail.attached?
    unless thumbnail.byte_size <= 300.kilobyte
      errors.add(:thumbnail, "file too big")
    end
  end

  end

