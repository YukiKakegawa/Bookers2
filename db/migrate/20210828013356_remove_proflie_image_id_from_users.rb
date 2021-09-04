class RemoveProflieImageIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :proflie_image_id, :intenger
  end
end
