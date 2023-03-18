# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(email: 'test@admin', password: 'macchi')

customers = Customer.create!(
  [
    {id: '1', last_name: '松井', first_name: '大樹', last_name_kana: 'マツイ', first_name_kana: 'ヒロキ',  email: 'matsui@test.com', password: 'password',  address: '東京1丁目', address_number: '000-0001', gender: '男性', age: '20代', unsubscribe_status: 'false',},
    {id: '2', last_name: '田中', first_name: '太郎', last_name_kana: 'タナカ', first_name_kana: 'タロウ',  email: 'tanaka@test.com', password: 'password',  address: '青森2丁目', address_number: '000-0002', gender: '男性', age: '20代', unsubscribe_status: 'false',},
    {id: '3', last_name: '横田', first_name: '愛', last_name_kana: 'ヨコタ', first_name_kana: 'アイ',  email: 'yokota@test.com', password: 'password',  address: '北海道3丁目', address_number: '000-0003', gender: '女性', age: '30代', unsubscribe_status: 'false',},
    {id: '4', last_name: '山田', first_name: '雄介', last_name_kana: 'ヤマダ', first_name_kana: 'ユウスケ',  email: 'yamada@test.com', password: 'password',  address: '愛知4丁目', address_number: '000-0004', gender: '男性', age: '40代', unsubscribe_status: 'false',},
    {id: '5', last_name: '池石', first_name: '由美', last_name_kana: 'イケイシ', first_name_kana: 'ユミ',  email: 'ikeishi@test.com', password: 'password',  address: '福岡5丁目', address_number: '000-0005', gender: '女性', age: '20代', unsubscribe_status: 'false',},
    {id: '6', last_name: '伊藤', first_name: '拓郎', last_name_kana: 'イトウ', first_name_kana: 'タクロウ',  email: 'ito@test.com', password: 'password',  address: '鹿児島6丁目', address_number: '000-0006', gender: '男性', age: '30代', unsubscribe_status: 'false',},
    {id: '7', last_name: '幸田', first_name: '仁', last_name_kana: 'ユキタ', first_name_kana: 'ジン',  email: 'yukita@test.com', password: 'password',  address: '京都7丁目', address_number: '000-0007', gender: '男性', age: '40代', unsubscribe_status: 'false',},
    {id: '8', last_name: '佐伯', first_name: '雄二', last_name_kana: 'サエキ', first_name_kana: 'ユウジ',  email: 'saeki@test.com', password: 'password',  address: '大阪8丁目', address_number: '000-0008', gender: '男性', age: '40代', unsubscribe_status: 'false',},
    {id: '9', last_name: '二宮', first_name: '茜', last_name_kana: 'ニノミヤ', first_name_kana: 'アカネ',  email: 'ninomiya@test.com', password: 'password',  address: '三重9丁目', address_number: '000-0009', gender: '女性', age: '20代', unsubscribe_status: 'false',},
    {id: '10', last_name: '宇都宮', first_name: '太一', last_name_kana: 'ウツノミヤ', first_name_kana: 'タイチ',  email: 'utsunomiya@test.com', password: 'password',  address: '静岡10丁目', address_number: '000-0010', gender: '男性', age: '30代', unsubscribe_status: 'false',},
  ]
)

Room.create!(
  [
    {id: '1',name: '禁煙ダブルルーム', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ダブルルーム.jpg"), filename:"ダブルルーム.jpg"), description: '禁煙ダブルルーム

    ☆全室禁煙
    ☆客室の広さ：22平米
    ☆加湿空気清浄機
    ☆Wi-Fi完備',},

    {id: '2',name: '禁煙ツインルーム', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ツインルーム.jpg"), filename:"ツインルーム.jpg"), description: '禁煙ツインルーム

    ☆全室禁煙
    ☆客室の広さ：26平米
    ☆加湿空気清浄機
    ☆Wi-Fi完備
    '},

    {id: '3',name: '禁煙フォースルーム', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/フォースルーム.jpg"), filename:"フォースルーム.jpg"), description: '禁煙フォースルーム

    ☆全室禁煙
    ☆客室の広さ：30平米
    ☆加湿空気清浄機
    ☆Wi-Fi完備
    '},

    {id: '4',name: '禁煙スイートルーム', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/スイートルーム.jpg"), filename:"スイートルーム.jpg"), description: '禁煙スイートルーム

    ☆全室禁煙
    ☆客室の広さ：42平米
    ☆加湿空気清浄機
    ☆Wi-Fi完備
    '},
  ]
)

Plan.create!(
  [
    {id: '1',name: '★冬限定★トク旅プラン！', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/トク旅.png"), filename:"ダブルルーム.jpg"), tax_excluded_fee:'10000', description:'
    【期間】2023年02月02日〜2023年03月31日
    期間限定タイムセール

    お得なセールプランです。

    ぜひこの機会にご宿泊下さい。

    施設情報
    ・ベッドはシモンズ社製6.5インチポケットコイルを採用。
    ・ホテルオリジナルピローを全室に標準装備。
    　また10種類の選べる枕コーナーも設置。
　    '},

    {id: '2',name: '★13時イン★　プラン！　～素泊まり～', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/13時イン.png"), filename:"ダブルルーム.jpg"), tax_excluded_fee:'9000', description:'


    【期間】通年

    13時から早めに入室可能プラン♪

    ぜひこの機会にご宿泊下さい。

    施設情報
    ・ベッドはシモンズ社製6.5インチポケットコイルを採用。
    ・ホテルオリジナルピローを全室に標準装備。
    　また10種類の選べる枕コーナーも設置。
    　'},

    {id: '3',name: '	★14時イン★　プラン！　～素泊まり～', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/14時イン.png"), filename:"ダブルルーム.jpg"), tax_excluded_fee:'8000', description:'


    【期間】通年

    14時から早めに入室可能プラン♪

    ぜひこの機会にご宿泊下さい。

    施設情報
    ・ベッドはシモンズ社製6.5インチポケットコイルを採用。
    ・ホテルオリジナルピローを全室に標準装備。
    　また10種類の選べる枕コーナーも設置。
    　'},

    {id: '4',name: '	★13時アウト★　プラン！', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/13時アウト.png"), filename:"ダブルルーム.jpg"), tax_excluded_fee:'10000', description:'


    【期間】通年

    13時までゆっくり滞在プラン♪

    ぜひこの機会にご宿泊下さい。

    施設情報
    ・ベッドはシモンズ社製6.5インチポケットコイルを採用。
    ・ホテルオリジナルピローを全室に標準装備。
    　また10種類の選べる枕コーナーも設置。
    　'},

    {id: '5',name: '清掃無し！ECOプラン', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ECO.png"), filename:"ダブルルーム.jpg"), tax_excluded_fee:'7000', description:'


    【期間】通年

    連泊時は清掃無し！地球環境ECOプラン！

    ぜひこの機会にご宿泊下さい。

    施設情報
    ・ベッドはシモンズ社製6.5インチポケットコイルを採用。
    ・ホテルオリジナルピローを全室に標準装備。
    　また10種類の選べる枕コーナーも設置。
    　'},

    {id: '6',name: '【ポイント10倍】お得に宿泊', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ポイント10倍.png"), filename:"ダブルルーム.jpg"), tax_excluded_fee:'10000', description:'


    【期間】2023年2月1日～2023年4月1日

    ポイント10倍！高還元プラン♪

    ぜひこの機会にご宿泊下さい。

    施設情報
    ・ベッドはシモンズ社製6.5インチポケットコイルを採用。
    ・ホテルオリジナルピローを全室に標準装備。
    　また10種類の選べる枕コーナーも設置。
    　'},
  ]
)

Information.create!(
  [
   {id: '1', title: '朝食営業時間について', content: '2階食事処にて毎朝7時～9時（lo.8.45）の時間で営業しております。館内着着用でのご利用はお控えください。', created_at: '2023/2/1',},
   {id: '2', title: '駐車場について', content: '敷地内駐車場には台数の限りが御座います。満車の際は提携先駐車場のご案内となります。', created_at: '2023/3/1',},
   {id: '3', title: '冬季限定プラン完売', content: '冬限定トク旅プラン！は好評につき完売致しました', created_at: '2023/2/10',},
   {id: '4', title: '入湯税改定について', content: '市内税法改定に伴い入湯税金額が大人１名あたり200円となります。ご理解の程をお願いいたします。', created_at: '2023/2/1',},
   {id: '5', title: '休館日について', content: '館内施設保全のため4月10日～4月13日まで休館致します。', created_at: '2023/3/15',},
   {id: '6', title: '湯上りサービスについて', content: 'フロントにて湯上りサービスのアイス無料提供を始めました。ご賞味くださいませ。', created_at: '2022/12/1',},
  ]
)

Comment.create!(
  [
   {id: '1', title: '朝食がおいしかった', content: '朝から活力でるメニューでした！また利用します！',customer_id: '1', created_at: '2022/12/1',},
   {id: '2', title: '景色が良かった！', content: '景観が良く気持ちよく過ごせました',customer_id: '3', created_at: '2023/1/12',},
   {id: '3', title: '対応良し', content: '受付の方が丁寧に対応して下さいました。',customer_id: '5', created_at: '2023/1/26',},
   {id: '4', title: 'リピートします！', content: '部屋の清潔感が保たれており過ごしやすかった',customer_id: '6', created_at: '2023/2/4',},
   {id: '5', title: '朝食が良い', content: '多種多様のメニューがあり、細かい気配りを感じた',customer_id: '8', created_at: '2023/2/23',},
   {id: '6', title: 'ツインルーム利用', content: 'ベッド幅も丁度よく気持ちよく就寝できました。',customer_id: '9', created_at: '2023/2/26',},
   {id: '7', title: 'いつも利用してます。', content: '出張先でいつも利用してます。朝食が良い',customer_id: '10', created_at: '2023/3/4',},
   {id: '8', title: 'アメニティが充実', content: '細かいアメニティが多く気配りを感じますね！',customer_id: '2', created_at: '2023/3/10',},
  ]
)

Reservation.create!(
  [
   {id: '1', plan_id: '1', customer_id: '1', room_id: '1', lodgment_date: '2023/4/1', nights_number: '1', count: '1', room_number: '1', note: 'なし', including_tax_total_amount: '11000', plan_status: 'false',},
  ]
)