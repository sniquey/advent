class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :present_ideas

      t.timestamps
    end
  end
end
