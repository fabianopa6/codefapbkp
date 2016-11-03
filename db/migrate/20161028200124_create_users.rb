class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name, limit: 50
    	t.string :login, limit: 10
    	t.string :password_digest
    	t.string :user_type, limit: 10

      t.timestamps null: false
    end
  end
end
