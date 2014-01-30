class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.references :improviser
      t.references :show

      t.timestamps
    end
  end
end
