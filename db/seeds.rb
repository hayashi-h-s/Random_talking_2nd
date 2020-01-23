@folder1 = Folder.create(title:  "seed_samole1")

@posts1 = @folder1.posts.create(content: "シードサンプル(post1)1"),
          @folder1.posts.create(content: "シードサンプル(post2)1")

@folder2 = Folder.create(title:  "seed_samole2")

@posts2 = @folder2.posts.create(content: "シードサンプル(post1)2"),
          @folder2.posts.create(content: "シードサンプル(post2)2")