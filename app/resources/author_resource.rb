class AuthorResource < ApplicationResource
  attribute :name, :string
  attribute :bio, :string
  attribute :date_of_birth, :date
  attribute :hometown, :string
end
