class Tagging < ActiveRecord::Base
  belongs_to :article
  belongs_to :tag
tags = article.taggings.collect{|tagging| tagging.tag}
end

