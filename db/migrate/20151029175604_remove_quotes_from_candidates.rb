class RemoveQuotesFromCandidates < ActiveRecord::Migration
  def change
    remove_column :candidates, :quotes, :json
  end
end
