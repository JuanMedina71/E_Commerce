import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final List<String> intereses;
  final String bio;
  final String jobTitle;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls,
    required this.intereses, 
    required this.bio,
    required this.jobTitle,
});

List<Object?> get props => [id, name, age, imageUrls, intereses, bio, jobTitle];

static List<User> users = [
 const User(
    id: 1, 
    name: 'Lucia', 
    age: 19, 
    imageUrls:  [
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',

      ],
    intereses: ['Juan', 'Carlos', 'Juan Carlos'],
    bio: 'Nulla anim enim velit do aliqua laboris velit. Lorem sit culpa magna sit laborum pariatur Lorem incididunt voluptate. Lorem amet fugiat esse fugiat ipsum commodo non elit non. Laborum commodo qui Lorem laboris aliquip excepteur elit nulla cillum. Eiusmod anim enim nostrud ipsum laborum. In sunt laborum elit exercitation eu ex cupidatat nulla consequat. Cillum cillum in labore velit duis ea sunt do.', 
    jobTitle: 'Teibolera profesional de Shan Gai'
    ),

  const User(
    id: 2, 
    name: 'Lucy Multiverso', 
    age: 23, 
    imageUrls:  [
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',

      ],    
    intereses: ['Juan', 'Carlos', 'Juan Carlos'], 
    bio: 'Joven Estudiante de Sistemas aprendiendo flutter', 
    jobTitle: 'Teibolera'
    ),
  const User(
    id: 3, 
    name: 'Prueba', 
    age: 18, 
    imageUrls:  [
       'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',

      ],    
    intereses: ['Juan', 'Carlos', 'Juan Carlos'],
    bio: 'Joven Estudiante de Sistemas aprendiendo flutter', 
    jobTitle: 'Teibolere profesional '
    ),
  const User(
    id: 4, 
    name: 'Hermosa', 
    age: 20, 
    imageUrls:  [
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',

      ],
    intereses: ['Juan', 'Carlos', 'Juan Carlos'],
    bio: 'Joven Estudiante de Sistemas aprendiendo flutter', 
    jobTitle: 'Futura novia de juan'
    ),

      const User(
    id: 5, 
    name: 'Futura esposa de juan', 
    age: 20, 
    imageUrls:  [
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',
      'https://scontent.fntr10-2.fna.fbcdn.net/v/t39.30808-6/343774227_3469899513298843_3915445993220008491_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFVQUejgAAU1cOJicUOQAADnBXDgKSuqV-cFcOApK6pXxY-A_W2kkRo3QAM-2Q8Sr_kNy_S3__O2AsLOk_XIpIf&_nc_ohc=nXbiQydOFdYAX_gM0ls&_nc_ht=scontent.fntr10-2.fna&oh=00_AfAvCpoon8h16J663jWnHMiCJyvyPOZYrZSx0CBRHkTAmA&oe=64C3FD88',

      ],    
    intereses: ['Juan', 'Carlos', 'Juan Carlos'],    
    bio: 'Joven Estudiante de Sistemas aprendiendo flutter', 
    jobTitle: 'Chica nalgona y bella'
    ),
    
];

}