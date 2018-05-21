class CreateMeetupShops < ActiveRecord::Migration[5.2]
  def change
    create_table :meetup_shops do |t|
      t.references :meetup, foreign_key: true
      t.references :shop, foreign_key: true
      t.boolean :fix

      t.timestamps
    end
  end
end
