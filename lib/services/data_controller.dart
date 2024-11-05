import 'package:demo_ujjval/models/event.dart';
import 'package:demo_ujjval/services/api_handler.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  static final instance = DataController._();
  DataController._();
  bool isInited = false;
  List<Event> myEvents = [];

  Future<void> fetchData() async {
    if (myEvents.isNotEmpty) {
      return;
    }
    isInited = true;
    myEvents = (await ApiHandler.fetchDataApi())
        .map(
          (e) => Event.fromJson(e),
        )
        .toList();
    await Future.delayed(const Duration(milliseconds: 100));
    update();
  }
}
