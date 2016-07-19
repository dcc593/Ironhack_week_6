class CreateSandwhiches < ActiveRecord::Migration[5.0]
  def change
    create_table :sandwhiches do |t|
      t.string :name
      t.string :bread_type

      t.timestamps
    end
  end
end
