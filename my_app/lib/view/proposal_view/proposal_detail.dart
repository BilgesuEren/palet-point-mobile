import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:my_app/view/proposal_view/proposal_view.dart';
import 'package:my_app/view/widget/detail_components/detail_info.dart';
import '../widget/app_bar/top_app_bar_left.dart';
import 'detail_product.dart';

class ProposalDetail extends ConsumerWidget {
   ProposalDetail({Key? key}) : super(key: key);

  final TextEditingController _deliveryDate =  TextEditingController(text: '3');
  final TextEditingController _tgs =  TextEditingController(text: "10");
  final TextEditingController _paymentDueDate =
      TextEditingController(text: 'Cari Hesap');

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    List<DropdownMenuEntry<String>> dropDownMenuPaymentType =
        ["Cari Hesap", "DBS"].map((String value) {
      return DropdownMenuEntry<String>(
        value: value,
        label: value.toString(),
      );
    }).toList();

    List<DropdownMenuEntry<int>> dropDownMenuDate =
        [3, 5, 7].map((int value) {
      return DropdownMenuEntry<int>(
        value: value,
        label: value.toString(),

      );
    }).toList();

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: TopAppBarLeft(
        title: 'Teklif No: 1533',
        icon: Icons.chat_bubble_outline,
        onPressed: () => {
          Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>  const ProposalView())
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
                  "Teklif Detaylari",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                ),
              ),
              SizedBox(
                width: width,
                child: const DetailInfo(
                  className: 'proposal',
                  row1: "15.09.2023", 
                  row2: "15.09.2023", 
                  row3: "30 gun", 
                  row4: "Satici"
                ),
              ),
              const SizedBox(height: 20.0),

              Container(
                width: width,
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 1,
                      child:  DropdownMenu<int>(
                        menuHeight: 200,
                        width: 140,
                        enableFilter: false,
                        enableSearch: false,
                        inputDecorationTheme: InputDecorationTheme(
                          filled: true,
                          fillColor: Theme.of(context).colorScheme.onPrimary,
                          constraints: const BoxConstraints(maxHeight: 40),
                          contentPadding: const EdgeInsets.only(left: 10.0),
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          border: const OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurfaceVariant),
                          ),
                        ),        
                        label:  Text(
                          'Teklif Suresi',
                          style: Theme.of(context).textTheme.bodySmall,
                          ),
                        menuStyle: MenuStyle(
                          alignment: AlignmentGeometry.lerp(
                              Alignment.bottomLeft, Alignment.bottomLeft, 0.3,
                          ),
                          surfaceTintColor: MaterialStateProperty.all<Color>(
                              Theme.of(context).colorScheme.onPrimary),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Theme.of(context).colorScheme.onPrimary),
                        ),
                        
                        dropdownMenuEntries: dropDownMenuDate,
                      ),
                    ),
                    
                    Expanded(
                      child: TextField(
                        controller: _tgs,
                        cursorColor: Theme.of(context).colorScheme.onBackground,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Theme.of(context).colorScheme.onPrimary,
                          contentPadding: const EdgeInsets.only(left: 10.0),
                          label: Text(
                            'Teklif Gecerlilik Suresi',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          constraints: const BoxConstraints(maxHeight: 40),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.onSurfaceVariant),
                          ),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              
              Container(
                width: width,
                alignment: Alignment.centerLeft,
                child: DropdownMenu<String>(
                  width: width - 50,
                controller: _paymentDueDate,
                menuHeight: 100,
                enableSearch: false,
                inputDecorationTheme: InputDecorationTheme(
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.onPrimary,
                  constraints: const BoxConstraints(maxHeight: 40),
                  contentPadding: EdgeInsets.only(left: 10.0),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurfaceVariant),
                  ),
                ),        
                label:  Text(
                  'Odeme Sekli',
                  style: Theme.of(context).textTheme.bodySmall,
                  ),
                menuStyle: MenuStyle(
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  alignment: AlignmentGeometry.lerp(
                      Alignment.bottomLeft, Alignment.bottomLeft, 0.5,
                  ),
                  surfaceTintColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).colorScheme.onPrimary),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).colorScheme.onPrimary),
                ),
                dropdownMenuEntries: dropDownMenuPaymentType,
                              ),
              ),

              const SizedBox(height: 30.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Teklif Istenen Urunler",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                ),
              ),
              const Divider(thickness: 2),
              ListView.builder(
                shrinkWrap: true, // makes ListView size itself according to children
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ProposalBody(
                      paletteDimensions: '120 x 100 Tahta Palet',
                      itemCount: 100);
                },
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
            fixedSize: MaterialStateProperty.all<Size>(const Size(180, 30)),
          ),
          child:  Text(
            'Teklif Gonder (0/3)',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            ),
        )
      ],
    );
  }
}
