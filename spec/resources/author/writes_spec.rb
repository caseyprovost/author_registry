# frozen_string_literal: true

require "rails_helper"

RSpec.describe AuthorResource, type: :resource do
  describe "creating" do
    let(:payload) do
      {
        data: {
          type: "authors",
          attributes: attributes_for(:author),
        },
      }
    end

    let(:instance) do
      AuthorResource.build(payload)
    end

    it "works" do
      expect {
        expect(instance.save).to eq(true), instance.errors.full_messages.to_sentence
      }.to change { Author.count }.by(1)
    end
  end

  describe "updating" do
    let!(:author) { create(:author) }

    let(:payload) do
      {
        data: {
          id: author.uuid.to_s,
          type: "authors",
          attributes: {}, # Todo!
        },
      }
    end

    let(:instance) do
      AuthorResource.find(payload)
    end

    xit "works (add some attributes and enable this spec)" do
      expect {
        expect(instance.update_attributes).to eq(true)
      }.to change { author.reload.updated_at }
      # .and change { author.foo }.to('bar') <- example
    end
  end

  describe "destroying" do
    let!(:author) { create(:author) }

    let(:instance) do
      AuthorResource.find(id: author.uuid)
    end

    it "works" do
      expect {
        expect(instance.destroy).to eq(true)
      }.to change { Author.count }.by(-1)
    end
  end
end
