import 'package:e_commerce/repositories/storage/storage_repository.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomImageContainer extends StatelessWidget {
  final TabController tabController;
  final String? imageUrl;

  const CustomImageContainer({super.key, required this.tabController, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 10),
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border(
            bottom: BorderSide(color: Theme.of(context).primaryColor, width: 1),
            top: BorderSide(color: Theme.of(context).primaryColor, width: 1),
            left: BorderSide(color: Theme.of(context).primaryColor, width: 1),
            right: BorderSide(color: Theme.of(context).primaryColor, width: 1),
          ),
        ),
        child: 
        (imageUrl == null) ?
        Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              icon: const Icon(
                Icons.add_circle_outlined,
                color: Colors.red,
              ),
              onPressed: () async{
                  ImagePicker picker = ImagePicker();
                  final XFile? image = await picker.pickImage(source: ImageSource.gallery);

                  if(image == null) {
                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('No image was selected.')));
                  }

                  if(image != null) {
                  
                  StorageRepository().uploadImage(image);
                  }

              },
            )
            ): Image.network(imageUrl!, fit: BoxFit.cover,),
      ),
    );
  }
}
