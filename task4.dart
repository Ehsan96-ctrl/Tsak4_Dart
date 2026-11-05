class person {
  final String? name;
  final int? age;
  const person.defaulatinfo([this.name = "unknown", this.age = 0]);
  const person(this.name, this.age);
  const person.named(this.name, this.age);
}

class student extends person {
  double _grade;
  student({required String name, required int age, required double grade})
    : _grade = grade,
      super(name, age);
  double get grade => _grade;
  set grade(double value) {
    if (value >= 0 && value <= 100) {
      _grade = value;
    } else {
      print("Invalid grade!");
    }
  }

  String get information {
    return """
Student Name: $name
Student Age: $age
Student Grade: $_grade
""";
  }
}

void main() {
  student s = student(name: "Ehsan", age: 21, grade: 95);
  print(s.information);
}
