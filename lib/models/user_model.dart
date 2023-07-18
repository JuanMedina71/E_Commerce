import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final String bio;
  final String jobTitle;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls, 
    required this.bio,
    required this.jobTitle,
});

List<Object?> get props => [id, name, age, imageUrls, bio, jobTitle];

static List<User> users = [
  User(
    id: 1, 
    name: 'Lucy', 
    age: 19, 
    imageUrls: const [
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/352788293_1393848527852438_6685904797667829026_n.jpg?_nc_cat=110&cb=99be929b-59f725be&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeENzyJ3xLsZlFU0ufqt8FhmqwKXj5k0AIGrApePmTQAgYkmJlbBwsbbUFN_xPnLkSB6NlZ-n5Jq9Nl9LSAKd6HP&_nc_ohc=t2Xho4aO9TgAX9YuXuk&_nc_ht=scontent.fntr10-2.fna&oh=00_AfCJNJDae50eti7nf-5JTN-AusgJMQ0b4Z59VBizaAxVrQ&oe=64BBB293',
      'https://scontent.fntr10-1.fna.fbcdn.net/v/t39.30808-6/328856178_1384503605722366_9102629088668526340_n.jpg?_nc_cat=100&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFGDaOTSYrPy_B5FdUWfQnwmX62dmQBAfaZfrZ2ZAEB9gWPa6IB3ttnZZp7Kp4K-27LUEdiu3xiWLPcVzXNxLOS&_nc_ohc=zCojhpz0vVoAX9dgWEE&_nc_ht=scontent.fntr10-1.fna&oh=00_AfAfUq5ufLig_FbItfddNJWNrtw2AzkGsIC1ad1cytYu0g&oe=64BB7043',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/223854678_960266147877347_1469164711023516132_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFAHSlomLZLVNUxp8r6__Fka5kOc-5h5jRrmQ5z7mHmNC6Ezx53Ah9iPYKcgRKFszgt8A1z-hdX6jd8MtnGwvbd&_nc_ohc=NxYPeQM3NAwAX-zEEPb&_nc_ht=scontent.fntr10-2.fna&oh=00_AfCNCda01-ynJRzbBU1n7Nmczi3-3AyRxacjvtRwfY3S-g&oe=64BCA3BB',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t1.6435-9/207115386_945825029321459_5340762653374544549_n.jpg?_nc_cat=111&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE8bQXlmPe-hRQlL6qGktfwoUM7_eYEXvWhQzv95gRe9WGV2g4EsgTn0rUko-HXiBzp3k80N-V9J-hX6NX2R0O2&_nc_ohc=m5rV-5Zkm88AX9FlehO&_nc_ht=scontent.fntr10-2.fna&oh=00_AfDluhzYCMe0uNjVjCiYVy2K5w8JS6dlC_SsNSLx5bMrOA&oe=64DE47A3'
      ],
    bio: 'Joven Estudiante de Sistemas aprendiendo flutter', 
    jobTitle: 'Futura Abogada'
    ),
  User(
    id: 2, 
    name: 'Juan Carlos', 
    age: 23, 
    imageUrls: const ['https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/352788293_1393848527852438_6685904797667829026_n.jpg?_nc_cat=110&cb=99be929b-59f725be&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeENzyJ3xLsZlFU0ufqt8FhmqwKXj5k0AIGrApePmTQAgYkmJlbBwsbbUFN_xPnLkSB6NlZ-n5Jq9Nl9LSAKd6HP&_nc_ohc=t2Xho4aO9TgAX9YuXuk&_nc_ht=scontent.fntr10-2.fna&oh=00_AfCJNJDae50eti7nf-5JTN-AusgJMQ0b4Z59VBizaAxVrQ&oe=64BBB293'], 
    bio: 'Joven Estudiante de Sistemas aprendiendo flutter', 
    jobTitle: 'Ingenierio en sistemas'
    ),
    
];

}