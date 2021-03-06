class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :icon_image
      t.string :background_image
      t.text :profile
      t.timestamps
    end
  end
end
