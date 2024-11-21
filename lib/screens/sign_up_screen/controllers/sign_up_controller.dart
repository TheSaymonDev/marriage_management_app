import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/routes/app_routes.dart';
import 'package:marriage_management_app/widgets/custom_dropdown_btn.dart';

class SignUpController extends GetxController {
  bool isLoading = false;
  bool isObscure = true;
  bool isChecked = false;

  final formKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final phoneController = TextEditingController();

  final countryController = TextEditingController();
  final stateController = TextEditingController();
  final cityController = TextEditingController();
  DropdownItem? selectedHeight;
  final occupationController = TextEditingController();
  final aboutMeController = TextEditingController();

  void toggleObscure() {
    isObscure = !isObscure;
    update();
  }

  void toggleIsChecked(bool newValue) {
    isChecked = newValue;
    update();
  }

  // void _setLoading(bool value) {
  //   isLoading = value;
  //   update();
  // }

  // for profile created by
  final profileCreatedBy = ['Self', 'Parent', 'Sibling', 'Relative', 'Friend'];
  int currentProfileCreatedBy = 0;
  void profileCreatedBySelection(int index) {
    currentProfileCreatedBy = index;
    update();
  }

  // for gender
  final gender = ['Male', 'Female'];
  int currentGender = 0;
  void genderSelection(int index) {
    currentGender = index;
    update();
  }

  // for religion
  DropdownItem? selectedReligion;
  final List<DropdownItem> religions = [
    DropdownItem(title: 'Islam', value: 'islam'),
    DropdownItem(title: 'Hinduism', value: 'hinduism'),
    DropdownItem(title: 'Buddhism', value: 'buddhism'),
    DropdownItem(title: 'Christianity', value: 'christianity'),
  ];

  // for form step
  int currentStep = 1;
  final pageController = PageController();
  void goToNextStep() {
    if (currentStep < 3) {
      currentStep++;
      update();
      pageController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
     Get.offAllNamed(AppRoutes.signInScreen);
    }
  }

  // for marital status
  final maritalStatus = ['Unmarried', 'Widower', 'Divorced', 'Separated', 'Married'];
  int currentMaritalStatus = 0;
  void maritalStatusSelection(int index) {
    currentMaritalStatus = index;
    update();
  }

  // for education
  DropdownItem? selectedEducation;
  final List<DropdownItem> educations = [
    DropdownItem(title: 'Ph.D.', value: 'phd'),
    DropdownItem(title: 'Masters', value: 'masters'),
    DropdownItem(title: 'Bachelors', value: 'bachelors'),
    DropdownItem(title: 'Civil Service', value: 'civilService'),
    DropdownItem(title: 'Professional Certifications', value: 'professionalCertifications'),
    DropdownItem(title: 'Diploma', value: 'diploma'),
    DropdownItem(title: 'Higher Secondary / Secondary', value: 'secondary'),
  ];

  // for employed in
  DropdownItem? selectedEmployedIn;
  final List<DropdownItem> employedIns = [
    DropdownItem(title: 'Government', value: 'government'),
    DropdownItem(title: 'Private', value: 'private'),
    DropdownItem(title: 'Defence', value: 'defence'),
    DropdownItem(title: 'Self Employed', value: 'selfEmployed'),
    DropdownItem(title: 'Business', value: 'business'),
    DropdownItem(title: 'Not Working', value: 'notWorking'),
  ];

  // for physical status
  final physicalStatus = ['Normal', 'Physically Challenged'];
  int currentPhysicalStatus = 0;
  void physicalStatusSelection(int index) {
    currentPhysicalStatus = index;
    update();
  }

  // for employed in
  DropdownItem? selectedEthnicity;
  final List<DropdownItem> ethnicity = [
    DropdownItem(title: 'Bengali', value: 'bengali'),
    DropdownItem(title: 'Chakma', value: 'chakma'),
    DropdownItem(title: 'Biharis', value: 'bihari'),
    DropdownItem(title: 'Marma', value: 'marma'),
    DropdownItem(title: 'Others', value: 'others'),
  ];
}
