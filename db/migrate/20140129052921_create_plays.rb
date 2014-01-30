class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.improviser :references
      t.show :references

      t.timestamps
    end
  end
end
