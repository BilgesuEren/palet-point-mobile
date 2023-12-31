import 'package:flutter/material.dart';
import 'package:my_app/view/order_view/order_view.dart';
import 'package:my_app/view/widget/detail_components/detail_table.dart';

import '../widget/app_bar/top_app_bar_left.dart';
import 'order_detail_info.dart';

class OrderDetail extends StatelessWidget {
const OrderDetail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: TopAppBarLeft(
      title: 'Siparis No: 1533',
      icon: Icons.chat_bubble_outline,
      onPressed: () => {
        Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>  const OrderView())
          )
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).colorScheme.onSecondary,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Yeni Siparis",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                ),
              ),
              SizedBox(
                width: width,
                child: const OrderDetailInfo(
                  row1: "1533",
                  row2: "Cari Hesap",
                  row3: "3",
                  row4: "10",
                  row5: "3",
                ),
              ),
              const SizedBox(height: 20.0),

              Container(
                width: width,
                padding: EdgeInsets.all(5.0),
                child: DetailTable(),
              )
            ],
          ),
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomStart,
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).colorScheme.primary),
            fixedSize: MaterialStateProperty.all<Size>(const Size(100, 30)),
          ),
          child: Text(
            'Onayla',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: Theme.of(context).colorScheme.error,
            ),
            fixedSize: const Size(100, 30),
          ),
          child: Text(
            'Ret',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
          ))
      ],
    );
  }
}