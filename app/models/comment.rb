class Comment < ActiveRecord::Base
  belongs_to :article

  def name
    super.present? ? super : 'Anonymous Coward'
  end

  validates :subject, presence: true
  validates :text, presence: true
end
