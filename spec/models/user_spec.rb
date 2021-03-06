require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {User.create!(name: "Blocmarks User", email: "user@blocmarks.com", password: "password").confirm }

   #Shoulda tests for name
   it { is_expected.to validate_presence_of(:name) }
   it { is_expected.to validate_length_of(:name).is_at_least(1) }

   #Shoulda tests for email
   it { is_expected.to validate_presence_of(:email) }
   it { is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity }
   it { is_expected.to validate_length_of(:email).is_at_least(3) }
   it { is_expected.to allow_value("user@blocmarks.com").for(:email) }

   #Shoulda tests for password
   it { is_expected.to validate_presence_of(:password) }
   it { is_expected.to validate_length_of(:password).is_at_least(6) }

   describe "invalid user" do
      let(:user_with_invalid_name) { User.new(name: "", email: "user@blocmarks.com") }
      let(:user_with_invalid_email) { User.new(name: "Blocmarks User", email: "") }

      it "should be an invalid user due to blank name" do
        expect(user_with_invalid_name).to_not be_valid
      end

      it "should be an invalid user due to blank email" do
        expect(user_with_invalid_email).to_not be_valid
      end
   end
end
