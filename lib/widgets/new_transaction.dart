import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTransactionHandler;

  NewTransaction(this.addTransactionHandler);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Enter Title"),
              controller: titleController,
              /*   onChanged: (value) {
                      titleInput = value;
                    },*/
            ),
            TextField(
              decoration: InputDecoration(labelText: "Enter Amount"),
              controller: amountController,
              /* onChanged: (value) => amountInput = value,*/
            ),
            TextButton(
                onPressed: () {
                  addTransactionHandler(
                    titleController.text,
                    double.parse(amountController.text),
                  );
                },
                child: Text(
                  "Add Transaction",
                  style: TextStyle(color: Colors.blue),
                )),
          ],
          crossAxisAlignment: CrossAxisAlignment.end,
        ),
        padding: EdgeInsets.all(10),
      ),
      elevation: 3,
    );
  }
}
