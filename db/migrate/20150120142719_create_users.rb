class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password_digest
      t.string :name
      t.string :lastname
      t.date :d_birth

      t.timestamps
    end
  end
end
