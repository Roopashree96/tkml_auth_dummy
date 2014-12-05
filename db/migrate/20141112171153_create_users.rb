class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :remote_id
      t.string :username

      t.timestamps
    end
  end
end
