class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :source
      t.boolean :active

      t.timestamps
    end
  end
end
