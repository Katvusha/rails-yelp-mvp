class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.string :content, null: false

      t.timestamps
    end
  end
end
