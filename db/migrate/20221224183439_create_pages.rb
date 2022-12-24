class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :position
      t.references :parent, null: true, foreign_key: { to_table: :pages }

      t.timestamps
    end
  end
end
