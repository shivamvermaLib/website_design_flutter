import 'package:faker/faker.dart';
import 'package:flutter_web_designs/server_api.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _serverAPI = Get.find<ServerAPI>();

  final Rx<String> image = Rx();

  @override
  void onInit() async {
    super.onInit();
    final images = await _serverAPI.getImages();
    image.value = random.element(images);
  }
}
