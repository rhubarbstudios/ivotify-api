class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.string :summary

      t.timestamps null: false
    end
  end
end
