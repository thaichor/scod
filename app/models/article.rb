class Article
  include Mongoid::Document
  include Mongoid::Timestamps

  ## Fields
  field :title,     type: String
  field :content,   type: String

  ## Relations
  ## only id, username, email
  belongs_to :author,     class_name: 'User'

  ## Validations
  validates  :title, :content, :author,     presence: true
end
