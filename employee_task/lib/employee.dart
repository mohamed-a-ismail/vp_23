
/*
Assignment
1- define class called Employee with the following attributes:
- imageUrl as string
- name as String
- salary as double
- sons as List of Son class (name, age, isMale)
2- create list of employees that contains 5 employees with dummy data
3- convert the list of employees to list pf widgets based on the image in the board
  */



class Employee{
  String imageUrl;
  String name;
  double salary;
  List<Son> sons;
  Employee(this.imageUrl,this.name,this.salary,this.sons);

}

class Son{
  String name;
  int age;
  bool isMale;
  Son(this.name,this.age,this.isMale);
}
