class Version < ApplicationRecord
  belongs_to :article, optional: true
  before_validation on_create: :set_version_number

  def set_version_number
    self.current_version = (self.article.current_version == self.version_number)?(version_number.to_i + 1): 1
    puts "call set_version:: #{self.current_version}"
  end
end
