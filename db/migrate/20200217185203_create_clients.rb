class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :direction
      t.string :payment_condition
      t.integer :phone
      t.string :email
      t.string :contact

      t.timestamps
    end
  end
end
