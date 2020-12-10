class Blog < ApplicationRecord
  has_rich_text :content
  has_rich_text :quickfire_questions
  has_many_attached :images
end
