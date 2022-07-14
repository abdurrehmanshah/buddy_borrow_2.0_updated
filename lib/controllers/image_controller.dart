import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart' as imp;
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class ImageController extends GetxController {
  imp.XFile? image;
  RxString imageName = "".obs;

  pickImage() async {
    imp.ImagePicker picker = imp.ImagePicker();
    image = await picker.pickImage(source: imp.ImageSource.gallery);
    if (image != null) {
      imageName(basename(image!.path));
    }

    update();
  }

  // Future<String> uploadImage() async {
  //   String imageUrl = "";
  //   FirebaseStorage storage = FirebaseStorage.instance;
  //   Reference reference = storage.ref().child(DateTime.now().toString());

  //   UploadTask uploadTask = reference.putFile(File(image!.path));
  //   TaskSnapshot taskSnapshot = await uploadTask;
  //   imageUrl = await taskSnapshot.ref.getDownloadURL();

  //   return imageUrl;
  // }

}
