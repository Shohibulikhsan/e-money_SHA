import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:table_calendar/table_calendar.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(100, 12, 0, 255),
        title: Text('Obatin'),
        toolbarHeight: 65,
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        centerTitle: true,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(color: Colors.white, size: 30, Icons.menu_rounded),
									
                ),
								IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: () {
              // Add your profile button onPressed logic here
            },
          ),
                
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Medicine Tracker",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                  ),
                ),
              ),
              Container(
                height: 400,
                color: Color.fromARGB(53, 13, 0, 255),
                child: TableCalendar(
                  firstDay: DateTime.utc(2020, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  calendarFormat: _calendarFormat,
                  selectedDayPredicate: ((day) {
                    return isSameDay(_selectedDay, day);
                  }),
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(_selectedDay, selectedDay)) {
                      // Call `setState()` when updating the selected day
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                    }
                  },
                  onFormatChanged: (format) {
                    if (_calendarFormat != format) {
                      // Call `setState()` when updating calendar format
                      setState(() {
                        _calendarFormat = format;
                      });
                    }
                  },
                  onPageChanged: (focusedDay) {
                    // No need to call `setState()` here
                    _focusedDay = focusedDay;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StatusList(value: "Semua", active: true),
                    StatusList(value: "Sudah", active: false),
                    StatusList(value: "Terlewat", active: false),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text("06:00"),
                        Text("AM"),
                      ],
                    ),
                  ],
                ),
              ),
              Medicine(
                obat: "Concor",
                desc: "1 Tablet",
                status: true,
                img: Image.asset('img/concor.jpg'),
              ),
              Medicine(
                obat: "Pantacid D",
                desc: "0,5 Tablet, Sesudah makan",
                status: false,
                img: Image.asset('img/captopril.jpeg'),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text("01:00"),
                        Text("PM"),
                      ],
                    ),
                  ],
                ),
              ),
              Medicine(
                obat: "Paracetamol",
                desc: "1 Tablet, Sesudah makan",
                status: false,
                img: Image.asset('img/paracetamol.png'),
              ),
              Medicine(
                obat: "Ranitidine",
                desc: "1 Tablet",
                status: false,
                img: Image.asset('img/ranit.jpg'),
              ),
            ],
          ),
        ],
      ),
			bottomNavigationBar: Container(
					color: Colors.white,
					child: Padding(
								padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
								child: GNav(
									backgroundColor: Colors.white,
									color: Colors.black,
									activeColor: Colors.black,
									tabBackgroundColor: Color.fromARGB(100, 12, 0, 255),
									gap: 2,
									tabs: [
										GButton(icon: Icons.home, text: 'Dashboard', onPressed:(){
											Navigator.pushNamed(context, '/dashboard');
										}),
										GButton(icon: Icons.medication_outlined, text: 'Obat',onPressed:(){
											Navigator.pushNamed(context, '/histori');
										}
										),
										GButton(icon: Icons.date_range, text: 'Checkup'),
										GButton(icon: Icons.person, text: 'Profile'),
									],
									
								),
							),
				),
    );
  }
}

class Medicine extends StatelessWidget {
  Medicine({
    super.key,
    required this.obat,
    required this.desc,
    required this.status,
    required this.img,
  });
  String obat;
  String desc;
  bool status;
  Image img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 75, right: 30, bottom: 20),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      height: 115,
      color: Colors.grey[300],
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            height: 60,
            width: 60,
            color: Colors.white,
            child: img,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: 120,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Text(
                  obat,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  desc,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: status == true
                ? Icon(size: 35, Icons.check_circle_outline_outlined)
                : Icon(size: 35, Icons.cancel),
          ),
        ],
      ),
    );
  }
}

class StatusList extends StatelessWidget {
  StatusList({super.key, required this.value, required this.active});
  String value;
  bool active;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(value),
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: Color.fromARGB(100, 12, 0, 255),
        ),
        primary:
            active == true ? Color.fromARGB(100, 12, 0, 255) : Colors.white,
        onPrimary:
            active == true ? Colors.white : Color.fromARGB(100, 12, 0, 255),
      ),
			
    );
		
  }
	
}
