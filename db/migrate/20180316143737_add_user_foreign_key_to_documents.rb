class AddUserForeignKeyToDocuments < ActiveRecord::Migration[5.1]
  def change
    change_table :restaurants do |t|
      t.references :user, index: true
    end
  end
end
