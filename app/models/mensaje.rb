class Mensaje < ActiveResource::Base
#  include ActiveModel::Validations
  self.site = ENV['PUB_SUB_URL'] || "http://localhost:4000/sub"

  attr_accessor :contenido, :canal

#  validates_presence_of :contenido, :canal

end

