class AddColumnToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :background, :string
  end
end
