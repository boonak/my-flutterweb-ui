import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterweb/widgets/custom_text.dart';

import '../../../constants/style.dart';

/// Example without a datasource
class ClientsTable extends StatelessWidget {
  const ClientsTable();

  @override
  Widget build(BuildContext context) {
    return DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 600,
              columns: [
                DataColumn2(
                  label: Text('Name'),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Location'),
                ),
                DataColumn(
                  label: Text('Rating'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
               
              ],
              rows: List<DataRow>.generate(
                  7,
                  (index) => DataRow(cells: [
                        DataCell(CustomText(text: "BoonBoy",)),
                        DataCell(CustomText(text: "Samutprakarn",)),
                        DataCell(Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star,
                            color: Colors.deepOrange,
                            size: 18,
                            ),
                            SizedBox(width: 5,),
                            CustomText(
                              text:"4.$index"
                            ),
                          ],
                        )),

                        DataCell(Container(
                          decoration: BoxDecoration(border: Border.all(color: active,
                          width: .5),
                          color: light,
                          borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          child: CustomText(
                            text: "Block Client",
                            color: active.withOpacity(.7),
                            weight: FontWeight.bold)
                          ))
                       
                      ])));
  }
}