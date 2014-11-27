class CreateAdvents < ActiveRecord::Migration
  def change
    create_table :advents do |t|
      t.date :date
      t.string :title
      t.text :description
      t.text :picture

      t.timestamps
    end
  end
end
