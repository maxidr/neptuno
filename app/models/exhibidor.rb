# coding: utf-8

class Exhibidor < ActiveRecord::Base
  belongs_to :tipo, :class_name => 'TipoExhibidor'
end

