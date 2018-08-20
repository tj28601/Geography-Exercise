class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :name, null: false
      t.string :capital, null: false
    end
  end
end
