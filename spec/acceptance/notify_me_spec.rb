require 'rails_helper'

RSpec.describe 'notify me', type: :feature do

  it 'notifies user when there is a like' do
    author = User.create(uid: 'null|1234', name: 'Bob')
    voter   = User.create(uid: 'nulll|567', name: 'Jon')
    movie  = Movie.create(title: 'Paris Texas', user: author)
    movie.likers
    email = NotifyMeMailer.movie_liked(author.email)

    expect(emaildeliver_to).to eq(author.email)
    expect(have_subject).to eq('Somebody have liked your movie')
  end
end
