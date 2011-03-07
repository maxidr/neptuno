# coding: utf-8
class TipoExhibidor < ActiveRecord::Base
  has_many :exhibidores
  has_many :parametros, :dependent => :destroy
end

