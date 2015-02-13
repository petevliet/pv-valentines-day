class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :author
      t.string :message
      t.boolean :anonymous
      t.integer :image_pick

      t.timestamps null: false
    end
  end
end
