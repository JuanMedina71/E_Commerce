import 'package:e_commerce/presentation/blocs/swipe/swipe_bloc.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(
        title: 'DISCOVER',
      ),
      body: BlocBuilder<SwipeBloc, SwipeState>(
        builder: (context, state) {
          if (state is SwipeLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SwipeLoaded) {
            return Column(
              children: [
                InkWell(
                  //* Navegar a la siguiente pantalla haciendo doble tap implementando goRouter
                  onDoubleTap: () => context.push('/users'),
                  child: Draggable(
                    feedback: UserCard(user: state.users[0]),
                    childWhenDragging: UserCard(user: state.users[1]),
                    child: UserCard(user: state.users[0]),
                    onDragEnd: (drag) {
                      if (drag.velocity.pixelsPerSecond.dx < 0) {
                        // Desliza a la izquierda
                        context
                            .read<SwipeBloc>()
                            .add(SwipeLeft(user: state.users[0]));
                        print('Se esta moviendo a la izquierda');
                      } else {
                        // Desliza a la derecha
                        context
                            .read<SwipeBloc>()
                            .add(SwipeRight(user: state.users[0]));
                        print('Se esta moviendo a la derecha');
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25.0, horizontal: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          context
                              .read<SwipeBloc>()
                              .add(SwipeLeft(user: state.users[0]));
                        },
                        child: ChoiceButton(
                          height: 60,
                          width: 60,
                          color: Theme.of(context).canvasColor,
                          hasGradient: false,
                          icon: Icons.clear_rounded,
                          size: 25,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context
                              .read<SwipeBloc>()
                              .add(SwipeRight(user: state.users[0]));
                        },
                        child: ChoiceButton(
                          height: 80,
                          width: 80,
                          color: Theme.of(context).cardColor,
                          hasGradient: true,
                          icon: Icons.favorite_outline_rounded,
                          size: 25,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: ChoiceButton(
                          height: 60,
                          width: 60,
                          color: Theme.of(context).cardColor,
                          hasGradient: false,
                          icon: Icons.watch_later_outlined,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return const Text('Something went wrong');
          }
        },
      ),
    );
  }
}
