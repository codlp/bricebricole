class Client < ApplicationRecord
  belongs_to :user

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :categorie ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
