# frozen_string_literal: true

class Author < ApplicationRecord
  after_initialize :set_uuid

  validates :name, :date_of_birth, :hometown, :bio, presence: true

  def to_param
    uuid
  end

  private

  def set_uuid
    self.uuid ||= SecureRandom.uuid
  end
end
