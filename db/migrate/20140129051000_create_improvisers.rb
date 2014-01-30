class CreateImprovisers < ActiveRecord::Migration
  def change
    create_table :improvisers do |t|
      t.name :string

      t.timestamps
    end
  end
end
