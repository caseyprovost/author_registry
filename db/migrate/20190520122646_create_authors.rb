class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    enable_extension "uuid-ossp"

    create_table :authors do |t|
      t.string :name
      t.text :bio
      t.date :date_of_birth
      t.string :hometown
      t.uuid :uuid, null: false, default: "uuid_generate_v4()"

      t.timestamps
    end
  end
end
