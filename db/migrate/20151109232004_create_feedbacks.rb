class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :body

      t.timestamps null: false
    end
  end
end
