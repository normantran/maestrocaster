class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.show_date :date

      t.timestamps
    end
  end
end
