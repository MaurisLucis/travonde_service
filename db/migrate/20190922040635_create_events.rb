class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.belongs_to :cause
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
