class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    drop_table(:authors)
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :homepage

      t.timestamps
    end
  end
end
