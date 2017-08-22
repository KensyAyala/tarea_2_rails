class CreateMirepos < ActiveRecord::Migration[5.1]
  def change
    create_table :mirepos do |t|
      t.string :user
      t.integer :edad

      t.timestamps
    end
  end
end
