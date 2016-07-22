namespace :dummy do
  desc 'create dummy data'
  task create: :environment do
    u = User.create!(name: 'Pocke')

    source = PostSource.create!(
      name: 'Vim',
      user: u,
    )

    Post.create!(
      value: "Vim is awesome!",
      post_source: source,
    )
  end
end
