class AddColumnToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :side_one, :string
    add_column :issues, :side_two, :string
  end
end
