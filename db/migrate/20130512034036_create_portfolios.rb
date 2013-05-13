class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :picture1
      t.string :picture2
      t.string :caption
      t.boolean :favorite
    end
  end
end
