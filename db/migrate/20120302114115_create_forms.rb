class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :user_email
      t.string :user_name
      t.string :to_email
      t.date :from_date
      t.date :to_date
      t.text :content

      t.timestamps
    end
  end
end
