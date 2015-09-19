module ContactsHelper
  def contact_avatar(contact, options = {})
    if contact.photo.nil?
      image_tag contact.avatar_url, options
    else
      image_tag contact.photo.thumb('150x150#').url, options
    end
  end
end