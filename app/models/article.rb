class Article < ActiveRecord::Base
  # use dependent option of association so that if an article is deleted, the associated comments will also be deleted
  # otherwise, will simply occupy space in db
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end