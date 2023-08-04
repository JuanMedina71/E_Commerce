import 'package:e_commerce/presentation/blocs/images/images_bloc.dart';
import 'package:e_commerce/presentation/screens/onBoardingScreens/on_boarding_screens.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:e_commerce/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Picture extends StatelessWidget {
  final TabController tabController;

  const Picture({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              CustomTextHeader(
                tabController: tabController,
                text: 'Añade 2 Imagenes sobre ti',
              ),
              const SizedBox(height: 20),
              BlocBuilder<ImagesBloc, ImagesState>(
                builder: (context, state) {
                  if (state is ImagesLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is ImagesLoaded) {
                    var imagesCount = state.imageUrls.length;

                    return SizedBox(
                      height: 350,
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, childAspectRatio: 0.66),
                                  itemCount: 6,
                          itemBuilder: (BuildContext context, int index) {
                            return (imagesCount > index)
                                ? CustomImageContainer(
                                    tabController: tabController,
                                    imageUrl: state.imageUrls[index])
                                : CustomImageContainer(
                                    tabController: tabController);
                          }),
                    );
                  } else {
                    return const Text('Sometghin wrong ');
                  }
                },
              ),
            ],
          ),
          Column(
            children: [
              const StepProgressIndicator(
                totalSteps: 5,
                currentStep: 4,
                selectedColor: Colors.deepPurple,
                unselectedColor: Colors.black26,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(tabController: tabController, text: 'NEXT STEP'),
            ],
          ),
        ],
      ),
    );
  }
}
