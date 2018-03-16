class AddUserForeignKeyToReviews < ActiveRecord::Migration[5.1]
  def change
    change_table :reviews do |t|
      t.references :user, index: true
    end
  end
end
