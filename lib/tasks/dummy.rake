namespace :dummy do
  desc 'create dummy data'
  task create: :environment do
    u = User.create!(name: 'Pocke')

    source = PostSource.create!(
      name: 'pockestrap - blog',
      user: u,
    )

    Post.create!(
      title: "RSpecでexitを含むコードをテストする - pockestrap",
      url: "http://pocke.hatenablog.com/entry/2016/07/17/085928",
      description: "Railsのジェネレータは内部でThorというライブラリを使用しています。 このライブラリを使用していく上で、一つ問題が発生しました。 処理を途中で切り上げるためにexitメソッドを使用しないといけない事態に陥ってしまっていました。",
      post_source: source,
    )
  end
end
