void main(List<String> arguments) {
  List<int> workingHours = [];

  workingHours.addAll([
    7,
    6,
    7,
    8,
    9,
    6,
    5,
    6,
    7,
    8,
    9,
    9,
    8,
    6,
    7,
    8,
    9,
    7,
    1,
    7,
    7,
    8,
  ]);

  int sumWorkHours = 0;
  int salaryTotal = 0;
  double salaryWithInsuranceDeduction = 0;
  double insuranceDeduction = (11 / 100);

  if (workingHours.length == 22) {
    for (int i = 0; i <= workingHours.length - 1; i++) {
      sumWorkHours = sumWorkHours + workingHours[i];
    }

    salaryTotal = sumWorkHours * 6;
    salaryWithInsuranceDeduction = salaryTotal * insuranceDeduction;
    print("$salaryWithInsuranceDeduction RM");
  } else {
    print("Please enter the employee's working hours within 22 days");
  }
}
