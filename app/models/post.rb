class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :title, format: { with: /Won't|Believe|Secret|Top|Guess/}
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end

#@@clickbait = [/Won't/i, /Believe/i, /Secret/i, /Top/i, /Guess/i]
CLICKBAIT = %w(won't believe secret top guess)

def is_click_bait?
  # check if title contains any clickbait terms
  # if one is present, nothing
  # else add error



  # if 
  #   self.errors.add(:title, 'Must contain clickbait')
  # else

  # end

end

# "Won't Believe", "Secret", "Top
# [number]", or "Guess"

# class Coffee < ApplicationRecord
#   validates :size, inclusion: { in: %w(small medium large),
#     message: "%{value} is not a valid size" }
# end


  # create_table "posts", force: :cascade do |t|
  #   t.string   "title"
  #   t.text     "content"
  #   t.text     "summary"
  #   t.string   "category"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end