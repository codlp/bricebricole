class Client < ApplicationRecord
  belongs_to :user
  has_many :chantiers
  has_many :commentaires, dependent: :destroy

  include PgSearch::Model

  pg_search_scope :global_search,
    against: [ :categorie, :fidelite, :adresse ],
    using: {
      tsearch: { prefix: true }
    }


end
