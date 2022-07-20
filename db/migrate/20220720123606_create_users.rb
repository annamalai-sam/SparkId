class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name, unique_key: true
      t.string :mail, unique_key: true
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :password_digest
      t.date :date_of_birth

      t.timestamps
    end
  end
end
