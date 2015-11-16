class CreateIssueSides < ActiveRecord::Migration
  def change
    create_table :issue_sides do |t|
      t.string :title
      t.integer :issue_id

      t.timestamps null: false
    end
    add_index(:issue_sides, :issue_id)

  end
end
