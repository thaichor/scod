module Embed
  class User
    include Mongoid::Document

    field :username,           type: String
    field :email,              type: String, default: ''
  end
end