class CreateSlacks < ActiveRecord::Migration[5.1]
  def change
    create_table :slacks do |t|

      t.string :token
      t.string :user_name
      t.text :content

      t.timestamps
    end
  end
end
