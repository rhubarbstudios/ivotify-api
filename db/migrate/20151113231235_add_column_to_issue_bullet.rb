class AddColumnToIssueBullet < ActiveRecord::Migration
  def change
    add_column :issue_bullets, :issue_id, :integer
  end
end
