require 'faker'

User.create([{
    name: 'Mikey Manjiro  Sano',
    photo: 'https://ramenparados.com/wp-content/uploads/2020/12/EpWfGheVoAAuDN3.jpg',
    email: 'toman_mikey@mail.com',
    password: '123123',
    password_confirmation: '123123'
},{
    name: 'Draken Ken Ryuguji',
    photo: 'https://ramenparados.com/wp-content/uploads/2020/12/EpWfTY8UYAAUrAr.jpg',
    email: 'toman_draken@mail.com',
    password: '123123',
    password_confirmation: '123123'
},{
    name: 'baji keisuke',
    photo: 'https://ramenparados.com/wp-content/uploads/2021/03/EwRVa-tUcAEsgaF.png',
    email: 'toman_bajin@mail.com',
    password: '123123',
    password_confirmation: '123123'
},{
    name: 'mitsuya takashi',
    photo: 'https://ramenparados.com/wp-content/uploads/2021/03/EwRVeJtVkAQwWo7.png',
    email: 'toman_mitsuya@mail.com',
    password: '123123',
    password_confirmation: '123123'
},{
    name: 'pachin haruki hayashida',
    photo: 'https://ramenparados.com/wp-content/uploads/2021/03/EwRVoREUUAAm5b9.png',
    email: 'toman_pachin@mail.com',
    password: '123123',
    password_confirmation: '123123'}])


50.times do
    Tweet.create(
        content: Faker::TvShows::TokioRevengres.quote,
        user_id: rand(1..5)
    ) 
end

AdminUser.create!(email: 'admin@mail.com', password: '123123', password_confirmation: '123123') if Rails.env.development?
AdminUser.create!(email: 'admin@mail.com', password: '123123', password_confirmation: '123123') if Rails.env.production?