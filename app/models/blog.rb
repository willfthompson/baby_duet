class Blog < ApplicationRecord

  has_rich_text :mama_intro

  has_rich_text :mama_content

  has_rich_text :quickfire_questions
  has_many_attached :images
end
