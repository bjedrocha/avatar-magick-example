class Contact < ActiveRecord::Base
  include Avatarable

  # paperclip attachment
  has_attached_file :photo, styles: { thumb: '150x150#' }

  # associations
  belongs_to :user

  # validations
  validates :first_name, :last_name, :email, presence: true
  validates_attachment :photo,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  # callbacks
  before_validation { photo.clear if remove_photo == '1' }

  attr_accessor :remove_photo

  def full_name
    [first_name, last_name].join(' ')
  end

  # required for avatarable
  def avatar_text
    first_name.chr
  end
end
