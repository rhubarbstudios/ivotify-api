class AddQuotesToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :quotes, :json
  end
end
