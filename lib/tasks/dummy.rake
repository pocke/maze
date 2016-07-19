namespace :dummy do
  desc 'create dummy data'
  task create: :environment do
    u = User.create!(name: 'Pocke')

    cat_with_source = Category.create!(name: 'Vim', description: 'for vim user')
    source = PostSource.create!(
      name: 'Vim',
      user: u,
      category: cat_with_source,
    )

    Subscribe.create!(
      user: u,
      category: cat_with_source,
    )

    Post.create!(
      value: "Vim is awesome!",
      post_source: source,
    )
  end
end
