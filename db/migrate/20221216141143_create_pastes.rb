class CreatePastes < ActiveRecord::Migration[7.0]
  def change
    create_table :pastes do |t|
      t.text :paste
      t.string :title
      t.string :access_id

      t.timestamps
    end
  end
end
