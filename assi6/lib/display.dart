import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  String name;
  String number;
  String gender;
  String dob;
  String branch;

  Display(
      {Key? key,
      required this.number,
      required this.name,
      required this.branch,
      required this.dob,
      required this.gender})
      : super(key: key);

  TextStyle kStyle = const TextStyle(
      fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Data Center'),
        leading: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(33)),
              color: Colors.white),
          child: Image.asset(
            'assets/walchand_logo-removebg-preview.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.blue[200],
                  ),
                  child: Center(
                      child: Text(
                        "Name : $name",

                        style: kStyle,
                  )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.blue[200],
                  ),
                  child: Center(
                      child: Text(
                        "Contact : $number",
                    style: kStyle,
                  )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.blue[200],
                  ),
                  child: Center(
                      child: Text(
                        "Gender : $gender",
                    style: kStyle,
                  )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.blue[200],
                  ),
                  child: Center(
                      child: Text("Branch : $branch"
                    ,
                    style: kStyle,
                  )),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.blue[200],
                  ),
                  child: Center(
                      child: Text("DOB: $dob",

                    style: kStyle,
                  )),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
