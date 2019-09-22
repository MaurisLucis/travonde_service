class CreateCauses < ActiveRecord::Migration[5.2]
  def change
    create_table :causes do |t|
      t.string :name
      t.string :description
      t.string :cover
      t.timestamps
    end
  end
end
