import 'package:flutter/material.dart';

class BookRoom extends StatefulWidget {
  String roomId;
  String roomType;
  String roomDescription;
  String roomPrice;
  String roomPhoto;
  String roomQuantity;

  BookRoom({
    required this.roomId,
    required this.roomType,
    required this.roomPhoto,
    required this.roomDescription,
    required this.roomPrice,
    required this.roomQuantity,
  });

  @override
  _BookRoomState createState() => _BookRoomState();
}

class _BookRoomState extends State<BookRoom> {
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
        title: Text("Room"),
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
                        padding: const EdgeInsets.all(5),
                        height: 120,
                        width: 200,
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(widget.roomPhoto)),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Text(
                              widget.roomType,
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              widget.roomDescription,
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
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  availabledates("February", "Sun", "20", false),
                  availabledates("February", "Mon", "21", false),
                  availabledates("February", "Tue", "22", false),
                  availabledates("February", "Wed", "23", false),
                  availabledates("February", "Thr", "24", false),
                  availabledates("February", "Fri", "25", false),
                  availabledates("February", "Sat", "26", false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  availabledates(String month, String day, String date, bool isSelected) {
    bool select = false;

    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 15, left: 10, top: 10),
      decoration: BoxDecoration(
        color: (isSelected == false) ? Color(0xffEEEEEE) : Color(0xff107163),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              setState(() {
                select = !select;
                selecteddate = day;
                print(select);
                print(selecteddate);
              });
            },
            child: Column(
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
          )
        ],
      ),
    );
  }
}
