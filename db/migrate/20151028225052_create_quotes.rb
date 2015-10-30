class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :body
      t.string :source
      t.references :issue, index: true, foreign_key: true
      t.references :candidate, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
