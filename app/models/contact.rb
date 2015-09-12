class Contact < ActiveRecord::Base
  # associations
  belongs_to :user

  # validations
  validates :first_name, :last_name, :email, presence: true

  def full_name
    [first_name, last_name].join(' ')
  end
end
