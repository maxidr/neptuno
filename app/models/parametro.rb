# coding: utf-8

#  t.string :nombre
#  t.string :valor
#  t.boolean :requerido
#  t.references :exhibidor
class Parametro < ActiveRecord::Base
  belongs_to :tipo_exhibidor
end

