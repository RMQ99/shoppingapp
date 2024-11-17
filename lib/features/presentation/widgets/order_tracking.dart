import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


class OrderTracking extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  const OrderTracking({
    super.key,
    required this.title,
    required this.description,
    required this.date});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(18),
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.white.withOpacity(0.3),),],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoSizeText(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(onPressed: (){},
                child: const Text("Track Order",
                style:TextStyle(
                  color: Color.fromARGB(100, 218, 142, 168
                ),
              ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: AutoSizeText(
              description,
              style: const TextStyle(fontSize: 13,
              color: Colors.grey),
            ),
          ),
          const SizedBox(height: 23,),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(Icons.local_shipping_outlined),
                ),
                AutoSizeText(
                  date,
                  style: const TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ],
      ),
    );
  }
}



