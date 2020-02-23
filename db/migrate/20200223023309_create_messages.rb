class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :messageable_id
      t.string :messageable_type

      t.timestamps
    end
  end
end
