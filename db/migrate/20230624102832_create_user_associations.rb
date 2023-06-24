class CreateUserAssociations < ActiveRecord::Migration[7.0]
  def change
    create_table :user_associations do |t|
      t.integer :user_to
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
