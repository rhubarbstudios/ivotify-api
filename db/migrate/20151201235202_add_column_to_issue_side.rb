class AddColumnToIssueSide < ActiveRecord::Migration
  def change
    add_column :issue_sides, :bullets, :string, array: true, default: '{}'
  end
end
