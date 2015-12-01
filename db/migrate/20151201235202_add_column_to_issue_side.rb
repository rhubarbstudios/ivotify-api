class AddColumnToIssueSide < ActiveRecord::Migration
  def change
    add_column :bullets, :string, array: true, default: '{}'
  end
end
