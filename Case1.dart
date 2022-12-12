import 'package:intl/intl.dart';
import 'dart:io';

void main(List<String> arguments) {
  print('---------- A Payroll Management System ----------');

  print('Enter The Employee Name:');
  String name = stdin.readLineSync()!;

  DateTime now = DateTime.now();
  DateTime startTime = DateTime(now.year, now.month, now.day, 0, 0, 0);
  DateTime endTime = DateTime(now.year, now.month, now.day, 22, 0, 0);
  Duration step = Duration(minutes: 60);

  List<int> timeSlots = [];

  while (startTime.isBefore(endTime)) {
    DateTime timeIncrement = startTime.add(step);
    int date = int.parse(DateFormat.H().format(timeIncrement));
    timeSlots.add(date);
    startTime = timeIncrement;
  }

  int totalWorkHours = 0;
  double totalSalary = 0;
  double salaryWithEpf = 0;
  double epf = (11 / 100);
  double empEpf;

  if (timeSlots.length == 22) {
    for (int i = 0; i <= timeSlots.length - 1; i++) {
      totalWorkHours = totalWorkHours + timeSlots[i];
    }

    totalSalary = totalWorkHours * 6;
    empEpf = totalSalary * epf;
    salaryWithEpf = (totalSalary - (totalSalary * epf));
    print("$name's Salary is RM $totalSalary");
    print("$name's Provident Fund is RM $empEpf");
    print("$name's Total Salary After EPF is RM $salaryWithEpf");
  } else {
    print("Please enter the employee's working hours within 22 days");
  }
}
