class Employees {
  String? name;
  num? salary;
  Employees({required this.name, required this.salary});
}

class Developer extends Employees {
  String? programmingLanguage;

  Developer({
    required String name,
    required num salary,
    required this.programmingLanguage,
  }) : super(name: name, salary: salary);
}

class Designer extends Employees {
  String? designTool;

  Designer({
    required String name,
    required num salary,
    required this.designTool,
  }) : super(name: name, salary: salary);
}

void main() {
  Developer dev = Developer(
    name: 'Amir',
    salary: 25000,
    programmingLanguage: "Flutter & dart",
  );
  Designer des = Designer(name: 'Ahmed', salary: 20000, designTool: 'Figma');

  print(
    "Developer Name : ${dev.name} , ${dev.salary} , ${dev.programmingLanguage}",
  );
  print("Designer Name : ${des.name} ,${des.salary} , ${des.designTool}");
}
