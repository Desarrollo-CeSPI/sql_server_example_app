class Person < ActiveRecord::Base
  include I18n::Alchemy
  attr_accessible :birthdate, :email, :first_name, :last_name, :saldo
  has_many :posts
  
  def fullname
    "#{last_name}, #{first_name}"
  end
  
  def localized_birthdate
    localized.birthdate
  end
  
  def localized_saldo
    localized.saldo
  end
  
  def to_s
    fullname
  end
end
