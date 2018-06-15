# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.cre ate([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.cre ate(name: 'Luke', movie: movies.first)


WorkGenre.first_or_create([
	{id: 1, name: 'バッグ・財布'},
	{id: 2, name: '衣類' },
	{ id: 3, name: '小物'},
	{ id: 4, name: 'アクセサリー'},
	{ id: 5, name: 'ベビー・キッズ用品'},
	{ id: 6, name: '生活雑貨'},
	{ id: 7, name: '家具'},
	{ id: 8, name: 'アート・絵'},
	{ id: 9, name: 'フィギュア・ジオラマ・プラモデル'},
	{ id: 10, name: 'ぬいぐるみ・人形' },
	{ id: 11, name: 'インテリア小物' },
	{ id: 12, name: '文具' },
	{ id: 13, name: '写真' },
	{ id: 14, name: '素材' },
	{ id: 15, name: '楽器' },
])

Admin.first_or_create([
	{ id: 1, name: '管理者A', email:'k1@ws', password:'111111' },
	{ id: 2, name: '管理者B', email:'k2@ws', password:'111111' },
])

#carrierWaveは一つの名前として扱う。普通、_idはいらないので指定するときは_idもいれること。
User.first_or_create([
	{ id: 1, :image => File.open("./app/assets/images/1.jpg") , name: '青山雄二', email:'1@ws', password:'111111' ,introduction: 'よろしく' ,massage_allow: true, quit_flg: false},
	{ id: 2, :image => File.open("./app/assets/images/2.jpg") , name: '飯島朋美', email:'2@ws', password:'111111' , massage_allow: true, quit_flg: false},
	{ id: 3, :image => File.open("./app/assets/images/3.jpg") , name: '上田秀介', email:'3@ws', password:'111111' ,introduction: 'やあ' ,massage_allow: true, quit_flg: false},
	{ id: 4, :image => File.open("./app/assets/images/4.jpg") , name: '江藤和樹', email:'4@ws', password:'111111' ,introduction: 'よろしゅう' ,massage_allow: true, quit_flg: false},
	{ id: 5, :image => File.open("./app/assets/images/5.jpg") , name: '大隈健太', email:'5@ws', password:'111111' ,introduction: '宜しくお願い致します。' ,massage_allow: true, quit_flg: false},
	{ id: 6, :image => File.open("./app/assets/images/6.jpg") , name: '神田拓哉', email:'6@ws', password:'111111' ,introduction: '写真撮るのが趣味！' ,massage_allow: false, quit_flg: false},
	{ id: 7, :image => File.open("./app/assets/images/7.jpg") , name: '木下静香', email:'7@ws', password:'111111' ,introduction: 'よろしくお願いします♪' ,massage_allow: false, quit_flg: false},
	{ id: 8, :image => File.open("./app/assets/images/8.jpg") , name: '栗田哲郎', email:'8@ws', password:'111111' ,massage_allow: false, quit_flg: false},
	{ id: 9, :image => File.open("./app/assets/images/9.jpg") , name: 'ケン・オイタ', email:'9@ws', password:'111111' ,introduction: 'Hellow!' ,massage_allow: false, quit_flg: false},
	{ id: 10, :image => File.open("./app/assets/images/10.jpg")  , name: '梢ちゃん', email:'10@ws', password:'111111' ,introduction: 'よろにゃーん' ,massage_allow: false, quit_flg: false},
])

# Work.first_or_create([
# 	{ id: 1, user_id:1  ,title:'1' ,explanation:'1', work_genre_id: 1 , :image => File.open("./app/assets/images/1.jpg") },
# 	{ id: 2, user_id:1  ,title:'2' ,explanation:'2', work_genre_id: 1 , :image => File.open("./app/assets/images/2.jpg") },
# 	{ id: 3, user_id:1  ,title:'3' ,explanation:'3', work_genre_id: 1 , :image => File.open("./app/assets/images/3.jpg") },
# 	{ id: 4, user_id:1  ,title:'4' ,explanation:'4', work_genre_id: 1 , :image => File.open("./app/assets/images/4.jpg") },
# 	{ id: 5, user_id:1  ,title:'5' ,explanation:'5', work_genre_id: 1 , :image => File.open("./app/assets/images/5.jpg") },
# 	{ id: 6, user_id:1  ,title:'6' ,explanation:'6', work_genre_id: 1 , :image => File.open("./app/assets/images/6.jpg") },
# 	{ id: 7, user_id:1  ,title:'7' ,explanation:'7', work_genre_id: 1 , :image => File.open("./app/assets/images/2.jpg") },
# 	{ id: 8, user_id:1  ,title:'8' ,explanation:'8', work_genre_id: 1 , :image => File.open("./app/assets/images/8.jpg") },
# 	{ id: 9, user_id:1  ,title:'9' ,explanation:'9', work_genre_id: 1 , :image => File.open("./app/assets/images/9.jpg") },
# 	{ id: 10, user_id:1  ,title:'10' ,explanation:'10', work_genre_id: 1 , :image => File.open("./app/assets/images/7.jpg") },
# ])

# WorkItem.first_or_create([
# 	{ id: 1, work_id:1, :image => File.open("./app/assets/images/2.jpg", body:"1") },
# 	{ id: 2, work_id:1, :image => File.open("./app/assets/images/3.jpg", body:"1") },
# 	{ id: 3, work_id:1, :image => File.open("./app/assets/images/4.jpg", body:"1") },
# 	{ id: 4, work_id:1, :image => File.open("./app/assets/images/5.jpg", body:"1") },
# 	{ id: 5, work_id:1, :image => File.open("./app/assets/images/6.jpg", body:"1") },
# 	{ id: 6, work_id:2, :image => File.open("./app/assets/images/3.jpg", body:"2") },
# 	{ id: 7, work_id:2, :image => File.open("./app/assets/images/4.jpg", body:"2") },
# 	{ id: 8, work_id:2, :image => File.open("./app/assets/images/5.jpg", body:"2") },
# 	{ id: 9, work_id:2, :image => File.open("./app/assets/images/6.jpg", body:"2") },
# 	{ id: 10, work_id:2, :image => File.open("./app/assets/images/7.jpg", body:"2") },
# 	{ id: 11, work_id:3, :image => File.open("./app/assets/images/2.jpg", body:"3") },
# 	{ id: 12, work_id:3, :image => File.open("./app/assets/images/3.jpg", body:"3") },
# 	{ id: 13, work_id:3, :image => File.open("./app/assets/images/4.jpg", body:"3") },
# 	{ id: 14, work_id:3, :image => File.open("./app/assets/images/5.jpg", body:"3") },
# 	{ id: 15, work_id:3, :image => File.open("./app/assets/images/6.jpg", body:"3") },
# 	{ id: 16, work_id:4, :image => File.open("./app/assets/images/3.jpg", body:"4") },
# 	{ id: 17, work_id:4, :image => File.open("./app/assets/images/4.jpg", body:"4") },
# 	{ id: 18, work_id:4, :image => File.open("./app/assets/images/5.jpg", body:"4") },
# 	{ id: 19, work_id:4, :image => File.open("./app/assets/images/6.jpg", body:"4") },
# 	{ id: 20, work_id:4, :image => File.open("./app/assets/images/7.jpg", body:"4") },
# ])

# CommentForWork.first_or_create([
# 	{ id: 1, work_id:1 ,user_id: 2, body:"コメント"},
# 	{ id: 2, work_id:1 ,user_id: 2, body:"コメント"},
# 	{ id: 3, work_id:1 ,user_id: 2, body:"コメント"},
# 	{ id: 4, work_id:1 ,user_id: 2, body:"コメント"},
# 	{ id: 5, work_id:1 ,user_id: 2, body:"コメント"},
# 	{ id: 6, work_id:2 ,user_id: 2, body:"コメント"},
# 	{ id: 7, work_id:2 ,user_id: 2, body:"コメント"},
# 	{ id: 8, work_id:2 ,user_id: 2, body:"コメント"},
# 	{ id: 9, work_id:2 ,user_id: 2, body:"コメント"},
# 	{ id: 10, work_id:2 ,user_id: 2, body:"コメント"},
# ])

# ReportWork.first_or_create([
# 	{ id: 1, work_id:1, user_id:3 ,reason:"通報内容"},
# 	{ id: 2, work_id:1, user_id:4 ,reason:"通報内容"},
# 	{ id: 3, work_id:1, user_id:5 ,reason:"通報内容"},
# ])

Contest.first_or_create([
	{ id: 1, name: '初めての作品', explanation: '初めて作った思い出の作品を共有しよう！' ,status: false },
	{ id: 2, name: '自信作', explanation: 'よくできた作品は皆に見せたいもの！' ,status: true },
])

# ContestWork.first_or_create([
# 	{ id: 1, user_id:1 , contest_id:1, title:"タイトル", explanation:"説明", :image => File.open("./app/assets/images/3.jpg") },
# 	{ id: 2, user_id:2 , contest_id:1, title:"タイトル", explanation:"説明", :image => File.open("./app/assets/images/4.jpg") },
# 	{ id: 3, user_id:1 , contest_id:1, title:"タイトル", explanation:"説明", :image => File.open("./app/assets/images/5.jpg") },
# 	{ id: 4, user_id:2 , contest_id:1, title:"タイトル", explanation:"説明", :image => File.open("./app/assets/images/6.jpg") },
# 	{ id: 5, user_id:1 , contest_id:1, title:"タイトル", explanation:"説明", :image => File.open("./app/assets/images/7.jpg") },
# 	{ id: 6, user_id:2 , contest_id:1, title:"タイトル", explanation:"説明", :image => File.open("./app/assets/images/8.jpg") },
# 	{ id: 7, user_id:1 , contest_id:2, title:"タイトル", explanation:"説明", :image => File.open("./app/assets/images/3.jpg") },
# 	{ id: 8, user_id:2 , contest_id:2, title:"タイトル", explanation:"説明", :image => File.open("./app/assets/images/4.jpg") },
# 	{ id: 9, user_id:1 , contest_id:2, title:"タイトル", explanation:"説明", :image => File.open("./app/assets/images/5.jpg") },
# 	{ id: 10, user_id:2 , contest_id:2, title:"タイトル", explanation:"説明", :image => File.open("./app/assets/images/6.jpg") },
# 	{ id: 11, user_id:1 , contest_id:2, title:"タイトル", explanation:"説明", :image => File.open("./app/assets/images/7.jpg") },
# 	{ id: 12, user_id:2 , contest_id:2, title:"タイトル", explanation:"説明", :image => File.open("./app/assets/images/8.jpg") },
# ])

# ContestWorkItem.first_or_create([
# 	{ id: 1, contest_work_id:1, :image => File.open("./app/assets/images/2.jpg", body:"1") },
# 	{ id: 2, contest_work_id:1, :image => File.open("./app/assets/images/3.jpg", body:"1") },
# 	{ id: 3, contest_work_id:1, :image => File.open("./app/assets/images/4.jpg", body:"1") },
# 	{ id: 4, contest_work_id:1, :image => File.open("./app/assets/images/5.jpg", body:"1") },
# 	{ id: 5, contest_work_id:1, :image => File.open("./app/assets/images/6.jpg", body:"1") },
# 	{ id: 6, contest_work_id:2, :image => File.open("./app/assets/images/7.jpg", body:"2") },
# 	{ id: 7, contest_work_id:2, :image => File.open("./app/assets/images/8.jpg", body:"2") },
# 	{ id: 8, contest_work_id:2, :image => File.open("./app/assets/images/9.jpg", body:"2") },
# 	{ id: 9, contest_work_id:2, :image => File.open("./app/assets/images/10.jpg", body:"2") },
# 	{ id: 10, contest_work_id:2, :image => File.open("./app/assets/images/1.jpg", body:"2") },
# ])