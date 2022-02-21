class CreateEventItems < ActiveRecord::Migration[6.1]
  def change
    create_table :event_items do |t|

      t.timestamps
    end
  end
end
