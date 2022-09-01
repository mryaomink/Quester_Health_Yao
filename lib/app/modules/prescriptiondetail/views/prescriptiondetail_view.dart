import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/prescriptiondetail_controller.dart';

class PrescriptiondetailView extends GetView<PrescriptiondetailController> {
  const PrescriptiondetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Prescription Details'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Column(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/plist.png'),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text('#202'),
              const SizedBox(
                height: 32.0,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Card(
                      color: Colors.blue,
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/obat.png'),
                        ),
                        title: const Text('Drug name'),
                        subtitle:
                            const Text('Prescribed by Dr. Jason Brown Jnr.'),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward)),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Card(
                      color: Colors.blue,
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/medic.png'),
                        ),
                        title: const Text('Drug name'),
                        subtitle:
                            const Text('Prescribed by Dr. Jason Brown Jnr.'),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
