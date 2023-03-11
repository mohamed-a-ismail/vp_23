import 'package:flutter/material.dart';
import 'employee.dart';

List<Employee> employees = [
  Employee(
      'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'Mohamed Saber',
      999.9, <Son>[
    Son('Omar', 10, true),
    Son('soha', 9, false),
  ]),
  Employee(
      'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'Sameer Ali',
      850.9, <Son>[
    Son('Samer', 5, true),
    Son('Samia', 8, false),
  ]),
  Employee(
      'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'Hasan Saad',
      777.9, <Son>[
    Son('Yasser', 10, true),
    Son('Arwa', 9, false),
  ]),
  Employee(
      'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'Samy fara',
      600.9, <Son>[
    Son('Mustafa', 10, true),
    Son('Dana', 12, true),
  ]),
  Employee(
      'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'Ahmed Salam',
      670.9, <Son>[
    Son('Adam', 10, true),
    Son('Alma', 9, false),
  ]),
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Info'),
      ),
      body: ListView(
        children: employees.map((e) {
          return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: ListTile(
                title: Column(
                  children: [
                    Text('Name: ${e.name}'),
                    const SizedBox(height: 10,width: 10,),
                    Text('Salary: ${e.salary.toString()}'),
                  ],
                ),
                trailing: Image.network(
                  e.imageUrl,
                  width: 35,
                ),
                subtitle: Row(
                  children: e.sons.map((s) => Column(
                    children: [
                      const SizedBox(height: 10,width: 10,),
                      Text('Name: ${s.name}'),
                      const SizedBox(height: 10,width: 10,),
                      Text('Age: ${s.age.toString()}'),
                      const SizedBox(height: 10,),
                      Text("Gender: ${(s.isMale) ? "Male" : "Female"}"
                      )]
                  )).toList(),
                )));
        }).toList(),
      ),
    );
  }
}


