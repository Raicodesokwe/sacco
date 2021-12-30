import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//this error handler shall display all our errors neatly for us
class ErrorHandler {
  Future<dynamic> errorDialog(BuildContext context) {
    return Platform.isIOS
        ? showCupertinoDialog(
            context: context,
            barrierDismissible: true,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                title: const Text('Error'),
                content: Column(
                  children: [
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: Text('Something went wrong'),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Ok'))
                        ],
                      ),
                    )
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                //minimum space leftover after children have occupied the space
              );
            })
        : showDialog(
            context: context,
            barrierDismissible: true,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                title: const Text('Error'),
                content: Column(
                  children: [
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: Text('something went wrong'),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Ok'))
                        ],
                      ),
                    )
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                //minimum space leftover after children have occupied the space
              );
            });
    //displays ios style dialog above contents of the app
    //it takes a builder that builds a cupertinoalertdialog widget
    //the content below the dialog is dimmed
    //we use stateful if dialog needs to update dynamically
  }
  //buildcontext handles location of a widget in a widget tree
}
