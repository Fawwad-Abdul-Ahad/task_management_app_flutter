import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateTimeController extends GetxController{
  Rx <DateTime> dateTime = DateTime.now().obs;
  Rx<TimeOfDay> timeofDay = TimeOfDay.now().obs;
  Rx<TimeOfDay> endTime = TimeOfDay.now().obs;

  selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: dateTime.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != dateTime) {
        dateTime.value = picked;
    }
  }

    timePicker(BuildContext context) {
    showTimePicker(
      context: context,
      initialTime: timeofDay.value,
    ).then((value) {
        timeofDay.value = value!;
    });
  }

  endtimePicker(BuildContext context) {
    showTimePicker(
      context: context,
      initialTime: endTime.value,
    ).then((value) {
        endTime.value = value!;
    });
  }
}