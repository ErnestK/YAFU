puts "************************************"
User.delete_all
Scrub.delete_all
puts "All User seeds was been destroyed"
puts "All Scrubs seeds was been destroyed"

User.create!([{
	login: 'Imperior007',
    password: '770',
    password_confirmation: '770',
    name: 'Dart',
    lastname: 'Veider',
    d_birth: '02.03.1962'
    },
    {
	login: 'Nagibalka',
    password: '123',
    password_confirmation: '123',
    name: 'Max',
    lastname: 'Batkov',
    d_birth: '19.11.1987'
    },
    {
    login: 'Volodya',
    password: 344,
    password_confirmation: 344,
    name: 'Alescha',
    lastname: 'Lovok',
    d_birth: '03.03.1972'
}
]
	)
puts "3 Users was been created"

Scrub.create!([
	{
	name: 'some_porn',
    file_type: 'video',
    size: 560,
    user_id: 1
    },
	{
	name: 'biber_song',
    file_type: 'music',
    size: 89,
    user_id: 2
	},
	{
	name: 'pics_with_boobs',
    file_type: 'picture',
    size: 12,
    user_id: 1
    },
    {
    name: 'Resume',
    file_type: 'documents',
    size: 7,
    user_id: 3
    }
    ]
    )
puts "4 Scrubs was been created"
puts "************************************"