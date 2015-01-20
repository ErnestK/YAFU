class AddUserIdToUploadFile < ActiveRecord::Migration
  def change
    add_column :upload_files, :user_id, :reference
  end
end
