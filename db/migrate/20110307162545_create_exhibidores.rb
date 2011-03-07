class CreateExhibidores < ActiveRecord::Migration
  def self.up
    create_table :exhibidores do |t|
      t.string :canal
      t.references :tipo_exhibidor

      t.timestamps
    end
  end

  def self.down
    drop_table :exhibidores
  end
end

