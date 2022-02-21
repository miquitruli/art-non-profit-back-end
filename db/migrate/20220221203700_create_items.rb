class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.references :event, null: false, foreign_key: true
      t.string :size
      t.float :quantity
      t.text :description

      t.timestamps
    end
  end
end
