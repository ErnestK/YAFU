# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.delete_all
Scrub.delete_all

# User.create!([{
# 	login: 'Imperior007',
#     password_digest: '770',
#     name: 'Dart',
#     lastname: 'Veider',
#     d_birth: '02.03.1962'
#     },
#     {
# 	login: 'Nagibalka',
#     password_digest: '123',
#     name: 'Max',
#     lastname: 'Batkov',
#     d_birth: '19.11.1987'
#     },
#     {
#     login: 'Volodya',
#     password_digest: 344,
#     name: 'Alescha',
#     lastname: 'Lovok',
#     d_birth: '03.03.1972'
# }
# ]
# 	)

Scrub.create!([
	{
	name: 'some_porn',
    file_type: 'video',
    size: 560
    },
	{
	name: 'biber_song',
    file_type: 'music',
    size: 89
	},
	{
	name: 'pics_with_boobs',
    file_type: 'picture',
    size: 12
    },
    {
    name: 'Resume',
    file_type: 'documents',
    size: 7
    }
    ]
    )