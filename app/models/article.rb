class Article < ActiveRecord::Base
  validates_presence_of :name, :body

  def to_s
    name
  end
end
