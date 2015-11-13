class CreateIssueBullets < ActiveRecord::Migration
  def change
    create_table :issue_bullets do |t|
      t.string :body
      t.integer :side_id

      t.timestamps null: false
    end
  end
end
