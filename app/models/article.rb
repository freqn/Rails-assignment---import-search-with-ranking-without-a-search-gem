class Article < ActiveRecord::Base
  extend FriendlyId
  include Rank

  friendly_id :title, use: [:slugged, :history]

  belongs_to :author
  validates :author, :title, :body, presence: true

  scope :published, -> { where(published: true).order("created_at desc") }
  scope :featured, -> { where(published: true).where(featured: true).order("id desc") }
  scope :unfeatured, -> { where.not(id: self.featured.limit(1).first) }

  def self.search(search)
    return self.all.published.unfeatured if search.blank?
    search.downcase!
    results = self.where('lower(title) LIKE :search OR lower(body) LIKE :search',
                search: "%#{search.downcase}%")
    Rank::Records.new(search, results).rank
  end
end
