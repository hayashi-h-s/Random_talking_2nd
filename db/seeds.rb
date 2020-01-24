@folder1 = Folder.create(title: "男女で盛り上がるトークテーマ")

@posts1 = @folder1.posts.create(content: "人生で一番後悔してることは？"),
          @folder1.posts.create(content: "一番好きな曲について語ってください")
          @folder1.posts.create(content: "一番好きな歌手の魅力を語ってください")
          @folder1.posts.create(content: "どんな時に異性と付き合いたいと感じる？")
          @folder1.posts.create(content: "今まで付き合った人数は？")
          @folder1.posts.create(content: "男性のどんな仕草が好き？")
          @folder1.posts.create(content: "交際相手との年齢差は何歳までOK？")
          @folder1.posts.create(content: "何フェチ？")
          @folder1.posts.create(content: "浮気されたらどうする？")
          @folder1.posts.create(content: "キュンとする異性の仕草は？")
          @folder1.posts.create(content: "これまでの恋愛の失敗談は？")
          @folder1.posts.create(content: "理想のプロポーズは？")
          @folder1.posts.create(content: "前の彼氏（彼女）はどんな人だった？")
          @folder1.posts.create(content: "前の彼氏（彼女）とは、どうして別れた？")
          @folder1.posts.create(content: "憧れのデートは？")
          @folder1.posts.create(content: "嫌だと思う異性の特徴は？")
          @folder1.posts.create(content: "初恋の思い出は？")
          @folder1.posts.create(content: "初めてのキスのエピソードは？")
          @folder1.posts.create(content: "恋人、家族のいる人を好きになってしまったらどうする？")
          @folder1.posts.create(content: "どこからが浮気？")
          @folder1.posts.create(content: "好きになった異性へのアプローチ方法は？")
          @folder1.posts.create(content: "最初に異性のどこを見る？")
          @folder1.posts.create(content: "SとMどっち？")

@folder2 = Folder.create(title: "罰ゲーム")

@posts2 = @folder2.posts.create(content: "シードサンプル(post1)2"),
          @folder2.posts.create(content: "シードサンプル(post2)2")

@folder2 = Folder.create(title: "雑談")

@posts2 = @folder2.posts.create(content: "シードサンプル(post1)2"),
          @folder2.posts.create(content: "シードサンプル(post2)2")