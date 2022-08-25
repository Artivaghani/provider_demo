import 'package:flutter/material.dart';
import 'package:providerdemo/Model/addcirclemodel.dart';
import 'package:providerdemo/Network/apimanager.dart';
import 'package:providerdemo/Network/endpoint.dart';
import 'package:providerdemo/constance/app_dialog.dart';

class SpdayProvider with ChangeNotifier {
  bool isloading = true;
  MyConnectionModel? connectionlist;

  getdata(BuildContext context) {
    APIManager.getAPICall(
      Endpoints.getMyGiftCircles,
    ).then((value) {
      connectionlist = MyConnectionModel.fromJson(value);
      isloading = false;
      notifyListeners();
    }).onError((error, stackTrace) {
      isloading = false;
      notifyListeners();
      AppDialog.buildErrorSnackbar(context, error.toString());
    });
  }
}
