class CreateMicroposies < ActiveRecord::Migration
  def change
    create_table :microposies do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
