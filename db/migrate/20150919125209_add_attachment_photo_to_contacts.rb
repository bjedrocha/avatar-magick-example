class AddAttachmentPhotoToContacts < ActiveRecord::Migration
  def up
    change_table :contacts do |t|
      t.attachment :photo
    end
  end

  def down
    remove_attachment :contacts, :photo
  end
end
