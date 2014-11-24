class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :join_date
      t.string :email

      t.timestamps
    end
  end
end
