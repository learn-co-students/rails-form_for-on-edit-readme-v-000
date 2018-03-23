class CreateFishes < ActiveRecord::Migration
  def change
    create_table :fish do |t|
      t.string :name
      t.string :color
    end
  end
end
