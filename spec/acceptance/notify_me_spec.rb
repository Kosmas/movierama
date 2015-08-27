require 'rails_helper'

RSpec.describe 'notify me', type: :feature do

  let(:author) { User.create(uid: 'null|1234', name: 'Bob', email: 'bob@test.com') }
  subject { NotifyMeMailer.movie_liked(author.email) }

  context 'when a movie is liked' do
    it 'should be delivered to the author email when there is a like' do
      is_expected.to deliver_to(author.email)
    end

    it { is_expected.to have_subject(/Somebody has liked your movie/) }
  end
end
