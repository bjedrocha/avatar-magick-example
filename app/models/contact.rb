class Contact < ActiveRecord::Base
  include Avatarable

  # associations
  belongs_to :user

  # validations
  validates :first_name, :last_name, :email, presence: true

  def full_name
    [first_name, last_name].join(' ')
  end

  # required for avatarable
  def avatar_text
    first_name.chr
  end
end
