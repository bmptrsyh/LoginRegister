import 'package:counter_app/sidebar.dart';
import 'package:flutter/material.dart';

class FisrtPage extends StatelessWidget {
  const FisrtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 1,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Management',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green[900],
          ),
        ),
        elevation: 1,
        foregroundColor: Colors.white,
        shadowColor: Colors.grey[900],
        leading: Builder(  // Menggunakan Builder di sini
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Ini sekarang punya konteks yang benar
            },
           icon: Padding(
             padding: const EdgeInsets.only(left: 10),
             child: Image.asset('assets/images/paragraph.png',
             height: 30,
             width: 30,
             ),
           ),
          ),
        ),
      ),
  drawer: const SideBar(),
  body: SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/box.png',
                height: 20,
                width: 20,),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Product or Service',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 0.4,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset('assets/images/menu-app.png',
                height: 20,
                width: 20,),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Product Category',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 0.4,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset('assets/images/delivery-box.png',
                height: 20,
                width: 20,),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Stock Management',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 0.4,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset('assets/images/tag.png',
                height: 20,
                width: 20,),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Customer',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 0.4,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
               Image.asset('assets/images/notes.png',
                height: 20,
                width: 20,),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Credit',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 0.4,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset('assets/images/shopping-cart.png',
                height: 20,
                width: 20,),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Purchase of Goods',
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
              height: 15,
            ),
            const Divider(
              thickness: 0.4,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset('assets/images/tax.png',
                height: 20,
                width: 20,),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Discount, Taxes and Fees',
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
              height: 15,
            ),
            const Divider(
              thickness: 0.4,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset('assets/images/in-stock.png',
                height: 20,
                width: 20,),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Stok Opname',
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
              height: 15,
            ),
            const Divider(
              thickness: 0.4,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset('assets/images/department.png',
                height: 20,
                width: 20,),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Dept',
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
              height: 15,
            ),
            const Divider(
              thickness: 0.4,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset('assets/images/suplier.png',
                height: 20,
                width: 20,),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Suplier',
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
              height: 15,
            ),
             const Divider(
              thickness: 0.4,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset('assets/images/interest-rate.png',
                height: 20,
                width: 20,),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Marketing',
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
              height: 15
            ),
             const Divider(
              thickness: 0.4,
            ),
          ],
        ),
      ),
    )
  ),
    );
  }
}