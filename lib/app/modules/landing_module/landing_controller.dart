import 'package:get/get.dart';
import 'package:investhub/app/data/provider/course_provider.dart';
import '../../../app/data/provider/landing_provider.dart';

class LandingController extends GetxController {
  final LandingProvider? provider;
  final CourseProvider? providerCourse;
  LandingController({this.provider, this.providerCourse});

  
}
