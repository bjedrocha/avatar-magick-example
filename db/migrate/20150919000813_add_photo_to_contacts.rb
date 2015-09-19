class AddPhotoToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :photo_uid,  :string
    add_column :contacts, :photo_name, :string
  end
end
