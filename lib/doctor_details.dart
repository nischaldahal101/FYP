import 'package:flutter/material.dart';

class DoctorDetails extends StatefulWidget {
  String doctorimage;
  String doctorspeciality;
  String doctorname;

  DoctorDetails(
      {required this.doctorimage,
      required this.doctorname,
      required this.doctorspeciality});

  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  late String selecteddate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Container(
                child: Row(
                  children: [
                    Container(
                        height: 120,
                        width: 120,
                        margin: const EdgeInsets.only(bottom: 10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(widget.doctorimage),
                          backgroundColor: Colors.white,
                        )),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Text(
                              widget.doctorname,
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              widget.doctorspeciality,
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 30),
              child: const Text(
                "February 2022",
                style: TextStyle(
                    color: Color(0xff363636),
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  availabledates("Sun", "20", false),
                  availabledates("Mon", "21", false),
                  availabledates("Tue", "22", false),
                  availabledates("Wed", "23", false),
                  availabledates("Thr", "24", false),
                  availabledates("Fri", "25", false),
                  availabledates("Sat", "26", false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  availabledates(String day, String date, bool isSelected) {
    bool select;
    Color boxcolor = Color(0xffEEEEEE);

    select = isSelected;
    return Ink(
        child: InkWell(
      onTap: () {
        select = true;
        selecteddate = day;
        print(day);
        setState(() {
          boxcolor = const Color(0xff107163);
        });

        print(select);
      },
      child: Container(
        width: 70,
        margin: const EdgeInsets.only(right: 15, left: 10, top: 10),
        decoration: BoxDecoration(
          color: select == true ? Colors.blue : Color(0xffEEEEEE),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                day,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(7),
              child: Text(
                date,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
