class Page < ActiveRecord::Base
  has_many :hyperlinks

  after_save :update_crawler

end
