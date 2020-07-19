class Article < ApplicationRecord
  has_many :versions
  attr_accessor :version_number, :article_id
  accepts_nested_attributes_for :versions

end
