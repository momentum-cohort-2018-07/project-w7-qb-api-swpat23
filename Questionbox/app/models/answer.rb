class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  include PgSearch
  pg_search_scope :search_by_answer, :against => :body
end
