# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'admin@admin.com', password: 'admin1234')

Restaurant.create([
  { name: '臺一牛奶大王', address: '台北市大安區新生南路三段 82 號', phone: '02-2363-4341', description: '誰說冬至才能吃湯圓？必吃的公館美食！' },
  { name: '韓庭州', address: '台北市大安區溫州街 87 號', phone: '02-8369-1302', description: '平價美味韓式料理' },
  { name: '貳樓餐廳', address: '台北市中正區羅斯福路三段 316 巷 9 弄 7 號', phone: '02-2364-1666', description: '絕對讓你吃飽的美式料理' },
  { name: 'So Free Pizza 柴燒窯烤比薩', address: '台北市羅斯福路三段 283 巷 28 號', phone: '02-2364-3351', description: '平價窯烤披薩，讓我們一起沈浸在起司海中吧！' }
])

Discount.create([
  { description: '學生優惠', title: '學生優惠 -- 9折', restaurant_id: 1, percentage: 0.9 },
  { description: '刷卡優惠', title: '刷卡優惠 -- 95折', restaurant_id: 3, percentage: 0.95 },
])

DishType.create([{ name: '日式料理' }, { name: '中式料理' }, { name: '韓式料理' }, { name: '點心' }, { name: '美式料理' }, { name: '義式料理' }])

Dish.create([
  { restaurant_id: 1, name: '八寶冰', description: '八寶冰', price: 55, dish_type_id: 4 },
  { restaurant_id: 1, name: '八寶牛奶冰', description: '八寶牛奶冰', price: 65, dish_type_id: 4 },

  { restaurant_id: 2, name: '泡菜鍋', description: '泡菜鍋', price: 130, dish_type_id: 3 },
  { restaurant_id: 2, name: '蛤蜊豆腐鍋', description: '蛤蜊豆腐鍋', price: 130, dish_type_id: 3 },
  { restaurant_id: 2, name: '海鮮豆腐鍋', description: '海鮮豆腐鍋', price: 150, dish_type_id: 3 },
  { restaurant_id: 2, name: '牛肉湯飯', description: '牛肉湯飯', price: 150, dish_type_id: 3 },

  { restaurant_id: 3, name: '紐澳良鮮蝦辣味沙拉', description: '紐澳良鮮蝦辣味沙拉', price: 260, dish_type_id: 5 },
  { restaurant_id: 3, name: '老法式骰子牛早餐', description: '老法式骰子牛早餐', price: 380, dish_type_id: 5 },
  { restaurant_id: 3, name: '總匯活力歐姆蕾', description: '總匯活力歐姆蕾', price: 260, dish_type_id: 5 },
  { restaurant_id: 3, name: '紐奧良辣味海鮮筆尖麵', description: '紐奧良辣味海鮮筆尖麵', price: 260, dish_type_id: 5 },
  { restaurant_id: 3, name: '貳樓漢堡塔', description: '貳樓漢堡塔', price: 280, dish_type_id: 5 },
  { restaurant_id: 3, name: '全美起司蛋糕', description: '全美起司蛋糕', price: 150, dish_type_id: 5 },

  { restaurant_id: 4, name: '海鮮口味', description: '海鮮口味', price: 130, dish_type_id: 6 },
  { restaurant_id: 4, name: '素食口味', description: '素食口味', price: 130, dish_type_id: 6 },
  { restaurant_id: 4, name: '起司口味', description: '起司口味', price: 130, dish_type_id: 6 },
])

LocationType.create([{ name: '台灣大學' }, { name: '宿舍' }])


Location.create([
  { name: '新體育館', address: '', location_type_id: 1 },
  { name: '社科院', address: '', location_type_id: 1 },
  { name: '霖澤館', address: '', location_type_id: 1 },
  { name: '小福廣場', address: '', location_type_id: 1 },
  { name: '鹿鳴廣場', address: '', location_type_id: 1 },
  { name: '總圖前', address: '', location_type_id: 1 },
  { name: '長興 BOT', address: '', location_type_id: 2 },
  { name: '水源 BOT', address: '', location_type_id: 2 },
  { name: '前門女宿區', address: '', location_type_id: 2 },
  { name: '女九舍', address: '', location_type_id: 2 },
  { name: '男宿區', address: '', location_type_id: 2 },
])

Transportation.create([
  { name: '腳踏車' },
  { name: '機車' },
  { name: '步行' },
])

Driver.create([
  { name: '楊小姐', phone: '0910-407727', working_time: '全天候', transportation_id: 1 },
  { name: '黃先生', phone: '0921-337337', working_time: '全天候', transportation_id: 3 },
  { name: '蔡先生', phone: '0910-408827', working_time: '全天候', transportation_id: 2 }
])
