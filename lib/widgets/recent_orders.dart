import 'package:flutter/material.dart';
import 'package:food_delivery_ui_tutorial/data/data.dart';

import '../models/order.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({super.key});

  Container _buildRecentOrder(BuildContext context, Order order) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: 320.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(width: 1.0, color: Colors.grey[200]!),
      ),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: AssetImage(order.food.imageUrl),
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),

            // Description
            Expanded(
              child: Container(
                margin: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(order.food.name + "as wwfwefwef wewefwefwefwef", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,),
                    SizedBox(height: 4.0),
                    Text(order.restaurant.name, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600), overflow:  TextOverflow.ellipsis),
                    SizedBox(height: 4.0),
                    Text(order.date, style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400), overflow:  TextOverflow.ellipsis),
                    SizedBox(height: 0.0),


                  ],
                ),
              ),
            ),
            // add insert button
            Container(
              margin: EdgeInsets.only(right: 20.0),
              width: 48.0,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: IconButton(
                icon: Icon(Icons.add),
                iconSize: 30.0,
                color: Colors.white,
                onPressed: () {},
            )
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Recent Orders',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
        ),
        Container(
          height: 120.0,
          // color: Colors.blue,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10.0)  ,
            scrollDirection: Axis.horizontal,
            itemCount: currentUser.orders.length,
            itemBuilder: (BuildContext context, int index) {
              Order order = currentUser.orders[index];

              return _buildRecentOrder(context, order);
            },
          ),
        ),
      ],
    );
  }
}
