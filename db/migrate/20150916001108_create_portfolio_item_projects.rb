class CreatePortfolioItemProjects < ActiveRecord::Migration
  def change
    create_table :portfolio_item_projects do |t|
      t.references :item, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.string :url

      t.timestamps null: false
    end
  end
end
