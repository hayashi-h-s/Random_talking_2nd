class AddFolderIdToPosts < ActiveRecord::Migration[6.0]
  def change
    change_table :posts do |t|
      t.belongs_to :folder
    end
  end
end