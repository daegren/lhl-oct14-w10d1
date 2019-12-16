class AddAuthorToPosts < ActiveRecord::Migration[6.0]
  def change
    change_table :posts do |t|
      t.references :author, foreign_key: { to_table: :users }
    end
  end
end
