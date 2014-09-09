class Article
  include Mongoid::Document
  include Mongoid::Timestamps

  ## Fields
  field :name,      type: String
  field :content,   type: String

  ## Relations
  ## only id, username, email
  embeds_one :author,               class_name: 'Embed::User'

  ## Validations
  validates  :name, :content,       presence: true
end
