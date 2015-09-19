module ContactsHelper
  def contact_avatar(contact, options = {})
    if contact.photo.file?
      image_tag contact.photo.url(:thumb), options
    else
      image_tag contact.avatar_url, options
    end
  end
end