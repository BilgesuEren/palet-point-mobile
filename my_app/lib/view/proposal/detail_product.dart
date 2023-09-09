import 'package:flutter/material.dart';

class ProposalBody extends StatefulWidget {
  final String paletteDimensions;
  final int itemCount;

  ProposalBody({required this.paletteDimensions, required this.itemCount});

  @override
  State<ProposalBody> createState() => _ProposalBodyState();
}

class _ProposalBodyState extends State<ProposalBody> {
  bool isTextFieldVisible = false;

  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide())),
      child: ExpansionTile(
        title: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.paletteDimensions),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text('${widget.itemCount} adet'),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
        subtitle: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 30,
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.surface,
                        border: const OutlineInputBorder(),
                        label: const Text('Fiyat'),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Lütfen fiyat giriniz.';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Container(
                    height: 30,
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: const Text('₺'),
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.surface,
                        border: const OutlineInputBorder(),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Lütfen fiyat giriniz.';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 30,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.surface,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  label: const Text('Not'),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen konu giriniz.';
                  }
                  return null;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
