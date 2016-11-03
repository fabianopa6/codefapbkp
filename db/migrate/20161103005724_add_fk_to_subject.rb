class AddFkToSubject < ActiveRecord::Migration
  def change
  	add_belongs_to :subjects, :user, index: true, foreign_key: "user_id"
  end
end
