# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'admin@admin.com', password: 'admin1234')

Restaurant.create([
  { name: '臺1牛奶', address: '羅斯福路', phone: '0912345678', description: 'abcdf' },
  { name: '臺2牛奶', address: '羅斯福路1', phone: '912345680', description: 'abcdf' }
])

Discount.create([
  { description: 'HAHAHA', title: 'HOHOHO -- 9折', restaurant_id: 1, percentage: 0.9 },
  { description: 'HAHooo', title: 'Hoasdfjas -- 3折', restaurant_id: 1, percentage: 0.3 },
  { description: 'HAHasdfasd', title: 'HOHOHO -- 8折', restaurant_id: 2, percentage: 0.8 },
  { description: 'asdfasdf', title: 'asdf92034 -- 7折', restaurant_id: 2, percentage: 0.7 }
])

DishType.create([{ name: '日本菜' }, { name: '中國菜' }])

Dish.create([
  { restaurant_id: 1, name: 'dish 1-1', description: 'diasjdlf', price: 100, dish_type_id: 1 },
  { restaurant_id: 1, name: 'dish 1-2', description: 'daasdfas', price: 200, dish_type_id: 2 },

  { restaurant_id: 2, name: 'dish 2-1', description: 'di1231jdlf', price: 300, dish_type_id: 1 },
  { restaurant_id: 2, name: 'dish 2-2', description: 'da1231dfas', price: 700, dish_type_id: 2 },
])

LocationType.create([{ name: '公家機關' }, { name: '學校' }])

Location.create([
  { name: '總統府', address: '你家', location_type_id: 1 },
  { name: '臺大', address: 'losfu rd.', location_type_id: 2 }
])

Transportation.create([
  { name: '摩托車' },
  { name: '賓士' }
])

Driver.create([
  { name: 'Dirver 1', phone: '0912345', working_time: 'monday', transportation_id: 1 },
  { name: 'Dirver 2', phone: '0912345', working_time: 'monday', transportation_id: 2 }
])
