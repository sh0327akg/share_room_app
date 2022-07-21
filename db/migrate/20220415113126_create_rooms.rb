class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string      :room_name,   null: false
      t.text        :description, null: false
      t.integer     :price,       null: false
      t.string      :address,     null: false
      t.string      :room_image,  null: false
      t.references  :user,        null: false, foreign_key: true

      t.timestamps
    end
  end
end
