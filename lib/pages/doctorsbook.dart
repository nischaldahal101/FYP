import 'package:flutter/material.dart';

class BookDoctor extends StatefulWidget {
  const BookDoctor({Key? key}) : super(key: key);

  @override
  _BookDoctorState createState() => _BookDoctorState();
}

class _BookDoctorState extends State<BookDoctor> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Theme.of(context).primaryColor,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: Colors.white,
                ))),
        body: Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20),
                    child: const Text(
                      'Doctors',
                      style: TextStyle(
                        fontSize: 35,
                        color: Color(0xff363636),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 35, left: 20),
                    width: size.width,
                    child: Stack(
                      fit: StackFit.loose,
                      children: [
                        Container(
                          child: const Text(
                            'Available Doctors',
                            style: TextStyle(
                              color: Color(0xff363636),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: ListView(
                      children: [
                        doctors(
                            'assets/doctor1.jpg',
                            'Dr. Rabinda Khunjeli',
                            'MBBS, MD. NMC No. 1934',
                            'Sr. Consultant Pulmonologist (Chest Physician)'),
                        doctors(
                            'assets/doctor2.jpg',
                            'Prof. Dr. Rishi Kumar Kafle',
                            'MD, FASN, NMC No. 670',
                            'Senior Nephrologist'),
                        doctors(
                            'assets/doctor3.jpg',
                            'Dr. Prakash Bista',
                            'MBBS, MS M.Ch NMC No.1571',
                            'Sr.Consultant Neuro Surgeon'),
                        doctors(
                            'assets/doctor4.jpg',
                            'Dr. Ramanee Vaidya',
                            'MBBS, MD, Ph.D. NMC No.2164',
                            'Senior Consultant Cardiologist, Physician'),
                        doctors(
                            'assets/doctor5.jpg',
                            'Dr. Ajit Nepal',
                            'MBBS(Dhaka), MS(BPKIHS) NMC No. 2739',
                            'Sr. Consultant ENT Surgeon'),
                      ],
                    ),
                  ),
                ])));
  }

  Widget doctors(String doctorimage, String doctorname, String doctoracademic,
      String doctorspeciality) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(left: 20),
                height: 120,
                width: 70,
                child: CircleAvatar(
                  backgroundImage: AssetImage(doctorimage),
                  backgroundColor: Colors.white,
                )),
            Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        doctorname,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        doctoracademic,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        doctorspeciality,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
