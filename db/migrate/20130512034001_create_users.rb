class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :zip
      t.string :email
      t.string :password
    end
  end
end
