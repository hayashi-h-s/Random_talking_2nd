class AddUserIdToFolders < ActiveRecord::Migration[6.0]
  def change
    change_table :folders do |t|
      t.belongs_to :user
    end
  end
end
