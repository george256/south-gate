# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

description1 = 'Nullam orci dui, fermentum sed mi non, tincidunt tincidunt mi. Donec at urna a diam imperdiet auctor. Sed dapibus diam nisi, in pharetra dui iaculis ac. Sed quis erat ut magna ornare scelerisque. Integer facilisis nisi tempor, varius velit eget, suscipit ligula.'
description2 = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae sollicitudin sapien, at placerat odio. Nulla ligula orci, vehicula vitae mauris vitae, fringilla fermentum dui. Praesent cursus neque non eros suscipit, ut lacinia nisi mollis. Praesent vel pretium sapien. In condimentum urna sit amet purus efficitur.'
description3 = 'Integer condimentum ligula ultrices quam laoreet sagittis. Phasellus quis placerat turpis, nec luctus turpis.'
description4 = 'Cras sagittis urna velit. Etiam quis diam rutrum, vulputate mauris sit amet, blandit lorem. Nulla quis dui ut sapien porttitor hendrerit id ac libero. Maecenas dictum quis mauris at vehicula.'
description5 = 'Nunc pharetra tristique orci ut semper. Fusce at porttitor lorem, id feugiat sem. In id magna facilisis, varius turpis quis, eleifend mi. Nulla facilisi. Ut et posuere odio.'
description6 = 'Etiam quis diam rutrum, vulputate mauris sit amet, blandit lorem. Nulla quis dui ut sapien porttitor hendrerit id ac libero. Maecenas dictum quis mauris at vehicula.'
description7 = 'Curabitur vulputate varius magna ac elementum. Aliquam facilisis, leo et efficitur cursus, est ligula porttitor justo, nec malesuada nunc massa convallis leo. Fusce interdum ac justo eu accumsan. Maecenas efficitur quis tellus at elementum.'
description8 = 'Aenean vitae tincidunt urna. Vestibulum euismod viverra ex, a vulputate ipsum imperdiet quis. Nam eget vestibulum diam.'
description9 = 'Integer aliquam condimentum erat, et pharetra ligula porttitor sit amet. Donec vulputate arcu et turpis accumsan auctor.'
description10 = 'Sed tincidunt, orci vel lacinia sollicitudin, nisl libero euismod mi, et malesuada risus lacus vel velit. Proin fermentum, nisl in tincidunt faucibus, tortor diam hendrerit purus, at luctus nulla dui sed dolor. Aliquam fermentum suscipit vehicula.'
description11 = 'Suspendisse condimentum lectus ac mauris viverra, non tristique dui maximus. Morbi molestie neque ut tortor tincidunt, ac blandit nisl fringilla. Phasellus sed mi rutrum erat aliquet posuere. Morbi volutpat tellus eu lacus luctus imperdiet.'
description12 = 'Ut interdum euismod metus, at facilisis leo tincidunt a. Nam nisi tellus, ornare id pretium at, scelerisque sed nibh. Maecenas et ex velit. Praesent molestie, sem id sodales feugiat, diam enim dictum ex, at finibus eros sem id ligula. Vestibulum dignissim, augue ultrices dictum pretium, urna ante feugiat mauris, suscipit luctus justo dui vitae magna.'
description13 = 'Maecenas efficitur quis tellus at elementum.'
description14 = 'Proin fermentum, nisl in tincidunt faucibus, tortor diam hendrerit purus, at luctus nulla dui sed dolor. Aliquam fermentum suscipit vehicula. Cras sagittis urna velit. Etiam quis diam rutrum, vulputate mauris sit amet, blandit lorem. Nulla quis dui ut sapien porttitor hendrerit id ac libero. Maecenas dictum quis mauris at vehicula.'
description15 = ' Proin fermentum pretium eros, ac posuere lorem fringilla vitae. Donec sagittis arcu a bibendum finibus.'
description16 = 'Praesent cursus neque non eros suscipit, ut lacinia nisi mollis. Praesent vel pretium sapien. In condimentum urna sit amet purus efficitur, sit amet viverra eros mollis.'

issue1 = Issue.create(id: 1, title: 'Broken Fire Hydrant', type: '', description: description1, location_description: '',
  photo: 'yoda-star-wars-vii.jpg', approved: 'f', status: '0', latitude: '33.949479', longitude: '-118.194241',
  created_at: '2016-01-16 21:40:35', updated_at: '2016-01-16 21:40:35')
issue1.photo = Rails.root.join("public/uploads/issue/photo/18/broken-hydrant.jpg").open
issue1.save!

issue2 = Issue.create(id: 2, title: 'Bigass Pothole', type: '', description: description2, location_description: '',
  photo: 'gear-2.png', approved: 'f', status: '1', latitude: '33.956838', longitude: '-118.229979',
  created_at: '2016-01-16 21:59:17', updated_at: '2016-01-16 21:59:17')
issue2.photo = Rails.root.join("public/uploads/issue/photo/19/pothole.jpg").open
issue2.save!

issue3 = Issue.create(id: 3, title: 'Broken Parking Meter', type: '', description: description3, location_description: '',
  photo: 'gear-2.png', approved: 'f', status: '4', latitude: '33.932532', longitude: '-118.172011',
  created_at: '2016-01-16 22:01:55', updated_at: '2016-01-16 22:01:55')
issue3.photo = Rails.root.join("public/uploads/issue/photo/23/parking-meter.jpg").open
issue3.save!

issue4 = Issue.create(id: 4, title: 'Inappropriate Graffiti', type: '', description: description4, location_description: '',
  photo: 'gear-2.png', approved: 'f', status: '2', latitude: '33.939225', longitude: '-118.218446',
  created_at: '2016-01-16 22:10:33', updated_at: '2016-01-16 22:10:33')
issue4.photo = Rails.root.join("public/uploads/issue/photo/22/graffiti.jpg").open
issue4.save!

issue5 = Issue.create(id: 5, title: 'Feral Cats', type: '', description: description5, location_description: 'Behind the parking lot of the red building',
  photo: 'gear-2.png', approved: 'f', status: '0', latitude: '33.956741', longitude: '-118.190980',
  created_at: '2016-01-16 22:12:08', updated_at: '2016-01-16 22:12:08')
issue5.photo = Rails.root.join("public/uploads/issue/photo/20/feral-cat.jpg").open
issue5.save!

issue6 = Issue.create(id: 6, title: 'Downed Power Line', type: '', description: description6, location_description: '',
  photo: 'gear-2.png', approved: 'f', status: '0', latitude: '33.916507', longitude: '-118.164286',
  created_at: '2016-01-16 22:13:15', updated_at: '2016-01-16 22:13:15')
issue6.photo = Rails.root.join("public/uploads/issue/photo/19/downed-power-line.jpg").open
issue6.save!

issue7 = Issue.create(id: 7, title: 'Roadkill', type: '', description: description7, location_description: '',
  photo: 'gear-2.png', approved: 'f', status: '2', latitude: '33.954747', longitude: '-118.189091',
  created_at: '2016-01-16 22:18:43', updated_at: '2016-01-16 22:18:43')
issue7.photo = Rails.root.join("public/uploads/issue/photo/25/roadkill.jpg").open
issue7.save!

issue8 = Issue.create(id: 8, title: 'Termite Infestation', type: '', description: description8, location_description: '',
  photo: 'gear-2.png', approved: 'f', status: '3', latitude: '33.951187', longitude: '-118.201365',
  created_at: '2016-01-16 22:28:01', updated_at: '2016-01-16 22:28:01')

issue9 = Issue.create(id: 9, title: 'Termite Infestation', type: '', description: description9, location_description: '',
  photo: 'gear-2.png', approved: 'f', status: '3', latitude: '33.951187', longitude: '-118.201365',
  created_at: '2016-01-16 22:35:19', updated_at: '2016-01-16 22:35:19')

issue10 = Issue.create(id: 10, title: 'Termite Infestation', type: '', description: description10, location_description: '',
  photo: 'gear-2.png', approved: 'f', status: '3', latitude: '33.951187', longitude: '-118.201365',
  created_at: '2016-01-16 22:38:14', updated_at: '2016-01-16 22:38:14')

issue11 = Issue.create(id: 11, title: 'Termite Infestation', type: '', description: description11, location_description: '',
  photo: 'gear-2.png', approved: 'f', status: '3', latitude: '33.951187', longitude: '-118.201365',
  created_at: '2016-01-16 22:51:54', updated_at: '2016-01-16 22:51:54')

issue12 = Issue.create(id: 12, title: 'Termite Infestation', type: '', description: description12, location_description: '',
  photo: 'gear-2.png', approved: 'f', status: '3', latitude: '33.951187', longitude: '-118.201365',
  created_at: '2016-01-16 22:55:37', updated_at: '2016-01-16 22:55:37')

issue13 = Issue.create(id: 13, title: 'Termite Infestation', type: '', description: description13, location_description: '',
  photo: 'gear-2.png', approved: 'f', status: '3', latitude: '33.951187', longitude: '-118.201365',
  created_at: '2016-01-16 23:00:25', updated_at: '2016-01-16 23:00:25')

issue14 = Issue.create(id: 14, title: 'Termite Infestation', type: '', description: description14, location_description: '',
  photo: 'gear-2.png', approved: 'f', status: '3', latitude: '33.951187', longitude: '-118.201365',
  created_at: '2016-01-16 23:04:44', updated_at: '2016-01-16 23:04:44')

issue15 = Issue.create(id: 15, title: 'Termite Infestation', type: '', description: description15, location_description: '',
  photo: 'gear-2.png', approved: 'f', status: '3', latitude: '33.951187', longitude: '-118.201365',
  created_at: '2016-01-16 23:11:05', updated_at: '2016-01-16 23:11:05')

issue16 = Issue.create(id: 16, title: 'Termite Infestation', type: '', description: description16, location_description: '',
  photo: 'gear-2.png', approved: 'f', status: '3', latitude: '33.951187', longitude: '-118.201365',
  created_at: '2016-01-16 23:14:49', updated_at: '2016-01-16 23:14:49')

