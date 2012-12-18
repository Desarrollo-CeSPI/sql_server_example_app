class Post < ActiveRecord::Base
  include I18n::Alchemy
  
  belongs_to :person
  attr_accessible :content, :publishing_date, :title, :person_id, :image
  
  def localized_publishing_date
    localized.publishing_date
  end
end
