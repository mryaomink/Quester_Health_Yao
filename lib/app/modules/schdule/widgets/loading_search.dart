import 'package:flutter/material.dart';

class LoadingSearch extends StatelessWidget {
  const LoadingSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/searchdoc.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          const Text(
            'Searching for a doctor...',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 60.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Cancel search',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
