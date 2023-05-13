import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


import '../../shared/theme.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(
            100, 12, 0, 255), // set app bar background color to purple
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            // Add your menu button onPressed logic here
          },
        ),
        actions: [
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
      body: SingleChildScrollView(
				child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 40,
                    right: 20,
                    bottom: 56,
                  ),
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(100, 12, 0, 255),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    ),
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Divider(
                          height: 10,
                        ),
                        Text(
                          'Hi Shohibul !',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                        Divider(height: 15),
                        Text(
                          'Anda mau sembuh ?',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(color: Colors.white),
                        ),
                        Text(
                          'Jangan Lupa minum obat',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(36),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 23),
                          color: Colors.grey,
                        )
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                  left: 40,
                                ),
                                hintText: "Search",
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5)),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 0,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                child: Text(
                  'Obat Hari Ini',
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Container(
                      child: Row(
                    children: [
                      Icon(Icons.access_time_outlined),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('02.00 PM'),
                      ),
                    ],
                  )),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 0),
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 12, 0, 255),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        right: 0,
                        bottom: 0,
                      ),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        right: 0,
                        bottom: 0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            'PARACETAMOL',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text('1 Tablet, Setelah Makan',
                              style: whiteTextStyle),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.access_time_outlined),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('02.00 PM'),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 0),
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 12, 0, 255),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        right: 0,
                        bottom: 0,
                      ),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        right: 0,
                        bottom: 0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            'PARACETAMOL',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text('1 Tablet, Setelah Makan',
                              style: whiteTextStyle),
                        ],
                      ),
                    )
                  ],
                ),
              ),
							const SizedBox(
								height: 10,
							),
							Container(
                margin: EdgeInsets.symmetric(horizontal: 0),
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 12, 0, 255),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        right: 0,
                        bottom: 0,
                      ),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        right: 0,
                        bottom: 0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            'PARACETAMOL',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text('1 Tablet, Setelah Makan',
                              style: whiteTextStyle),
                        ],
                      ),
                    )
                  ],
                ),
              ),
							const SizedBox(
								height: 10,
							),
							Container(
                margin: EdgeInsets.symmetric(horizontal: 0),
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 12, 0, 255),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        right: 0,
                        bottom: 0,
                      ),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        right: 0,
                        bottom: 0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            'PARACETAMOL',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text('1 Tablet, Setelah Makan',
                              style: whiteTextStyle),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
      			),
		bottomNavigationBar: Container(
					color: Colors.white,
					child: Padding(
								padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
								child: GNav(
									backgroundColor: Colors.white,
									color: Colors.black,
									activeColor: Colors.black,
									tabBackgroundColor: Color.fromARGB(100, 12, 0, 255),
									gap: 0,
									tabs: [
										GButton(icon: Icons.home, text: 'Dashboard', onPressed:(){
											Navigator.pushNamed(context, '/dashboard');
										}),
										GButton(icon: Icons.medication_outlined, text: 'Obat',onPressed:(){
											Navigator.pushNamed(context, '/histori');
										}
										),
										GButton(icon: Icons.date_range, text: 'Checkup'),
									
									],
									
								),
							),
				),
    );
  }
}

//
