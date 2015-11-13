class RemoveColumnFromIssues < ActiveRecord::Migration
  def change
    remove_column :issues, :side_one, :string
    remove_column :issues, :side_two, :string
  end
end
