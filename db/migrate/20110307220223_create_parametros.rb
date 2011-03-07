class CreateParametros < ActiveRecord::Migration
  def self.up
    create_table :parametros do |t|
      t.string :nombre
      t.string :valor
      t.boolean :requerido
      t.references :tipo_exhibidor

      t.timestamps
    end
  end

  def self.down
    drop_table :parametros
  end
end

