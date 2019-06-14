class AuthorResource < ApplicationResource
  attribute :id, :uuid do
    @object.uuid
  end

  filter :id, only: [:eq] do
    eq { |scope, value| scope.where(uuid: value) }
  end

  attribute :name, :string
  attribute :bio, :string
  attribute :date_of_birth, :date
  attribute :hometown, :string
end
