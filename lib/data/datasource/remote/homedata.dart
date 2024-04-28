

import 'package:sneakers/core/class/crud.dart';
import 'package:sneakers/core/class/statusrequest.dart';
import 'package:sneakers/linkapi.dart';

class Homedata {
  Crud crud ;
  Homedata(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.homepage, {});
    return response.fold ((StatusRequest) => 1, (r) => r);
  }
}