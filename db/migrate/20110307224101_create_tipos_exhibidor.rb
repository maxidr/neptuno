class CreateTiposExhibidor < ActiveRecord::Migration
  def self.up
    create_table :tipos_exhibidor do |t|
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :tipos_exhibidor
  end
end
