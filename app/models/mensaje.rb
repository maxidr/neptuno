class Mensaje < ActiveResource::Base
#  include ActiveModel::Validations
  self.site = "http://localhost:4000/"

  attr_accessor :contenido, :canal

#  validates_presence_of :contenido, :canal

end

