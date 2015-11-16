class CreateIssueBullets < ActiveRecord::Migration
  def change
    create_table :issue_bullets do |t|
      t.string :body
      t.integer :issue_side_id

      t.timestamps null: false
    end
    add_index(:issue_bullets, :issue_side_id)

  end
end
