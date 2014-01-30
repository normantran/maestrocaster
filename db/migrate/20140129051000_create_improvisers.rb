class CreateImprovisers < ActiveRecord::Migration
  def change
    create_table :improvisers do |t|
      t.string :name

      t.timestamps
    end
  end
end
