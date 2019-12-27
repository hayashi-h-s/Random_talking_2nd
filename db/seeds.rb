@folder = Folder.create(title:  "seed_samole")

@posts = @folder.posts.create(content: "シードサンプル(posts)")