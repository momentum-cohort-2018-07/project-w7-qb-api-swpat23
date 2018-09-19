class Question < ApplicationRecord

  paginates_per 3

  has_many :answers, dependent: :destroy
  belongs_to :user
  #validates :body, presence: true,
  #                 length: { minimum: 6 }
  include PgSearch
  pg_search_scope :search_by_question, :against => :body

end
