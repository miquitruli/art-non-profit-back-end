class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.string :address
      t.datetime :due_by
      t.string :contact
      t.string :website

      t.timestamps
    end
  end
end
