class CreateWhoIs < ActiveRecord::Migration
  def change
    create_table :who_is do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
