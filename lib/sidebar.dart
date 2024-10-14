import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: SingleChildScrollView(
         child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 150,
                padding: const EdgeInsets.only(
                  left: 25,
                  top: 20,
                  ),
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/images/user.png',
                    height: 60,
                    width: 60,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Bima Putrasyah",
                          style: TextStyle(
                            // color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Owner",
                          style: TextStyle(
                            // color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: double.infinity, // Lebar container memenuhi layar
                color: Colors.grey[300], // Background color memenuhi seluruh container
                alignment: Alignment.centerLeft, // Menempatkan teks di tengah container
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Upgrade to Kasir Pintar PRO',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[900],
                    ),
                  ),
                ),
              ),
              const SizedBox(
              height: 10,
            ),
           Padding(
             padding: const EdgeInsets.only(left: 25.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const Text(
                  'Management',
                    style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                       height: 30,
                    ),
                 const Text(
                  'Sales Transaction',
                    style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                 const Text(
                  'Credit',
                    style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                 const Text(
                  'PPOB',
                    style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                 const Text(
                  'Report',
                    style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                 Row(
              children: [
                const Text(
                  'Finance',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                 Padding(
                   padding: const EdgeInsets.only(right: 20),
                   child: Container(
                         padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(5),
                           border: Border.all(color: Colors.amber, width: 2),
                         ),
                         child: const Text(
                           'PRO',
                           style: TextStyle(
                             color: Colors.amber,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                   ),
                 ),
              ],
            ),
                    const SizedBox(
                      height: 30,
                    ),
                  Row(
              children: [
                const Text(
                  'Shift',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                 Padding(
                   padding: const EdgeInsets.only(right: 20),
                   child: Container(
                         padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(5),
                           border: Border.all(color: Colors.amber, width: 2),
                         ),
                         child: const Text(
                           'PRO',
                           style: TextStyle(
                             color: Colors.amber,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                   ),
                 ),
              ],
            ),
                    const SizedBox(
                      height: 30,
                    ),
                 const Text(
                  'Setting',
                    style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                      ),
                    ),
                  const SizedBox(
                    height: 30,
                  ),
               ],
             ),
           ),
           Padding(
              padding: const EdgeInsets.symmetric(
              horizontal: 15
              ),
                  child: Container(
                    height: 45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.green[900]!, width: 1),
                ),
              child: const Center(
                  child: Text(
                    'Integrate E-Wallet',
                  style: TextStyle(
                    fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 1,
        ),
        SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                  'Referral',
                    style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                      ),
                    ),
                  SizedBox(
                    height: 30,
                  ),
               Text(
                  'My Online Store',
                    style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                      ),
                    ),
                  SizedBox(
                    height: 30,
                  ),
               Text(
                  'Help & Support',
                    style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                      ),
                    ),
                  SizedBox(
                    height: 30,
                  ),
               Text(
                  'Financing',
                    style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                      ),
                    ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 1,
        ),
        SizedBox(
          height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Last Sync'),
                Text('-'),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          )
       ],
      ),
    ),
   );
  }
 }