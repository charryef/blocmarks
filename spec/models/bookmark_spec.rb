require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  let (:user) { User.create!(name: "Blocmarks User", email: "user@blocmarks.com", password: "password") }
  let (:topic) { Topic.create!(title: "Blocmarks Title", user: user) }
  let (:bookmark) { Bookmark.create!(url: "www.Blocmarks.com", topic: topic) }

  it { is_expected.to belong_to(:topic) }

  describe "attributes" do
    it "has a url and topic attributes" do
      expect(bookmark).to have_attributes(url: "www.Blocmarks.com", topic: topic)
    end
  end

end
