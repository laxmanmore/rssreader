class Entry < ApplicationRecord
  belongs_to :feed
  scope :recents, -> { order('published_at desc') }
end
