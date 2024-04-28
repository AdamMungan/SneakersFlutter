import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sneakers/controller/home_controller.dart';
import 'package:sneakers/core/class/handlingdataview.dart';
import 'package:sneakers/core/constant/color.dart';
import 'package:sneakers/linkapi.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
        body: GetBuilder<HomeControllerImp>(
            builder: (controller) => HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: ListView(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(children: [
                              Expanded(
                                  child: TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    hintText: "Find Product",
                                    hintStyle: TextStyle(fontSize: 18),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    filled: true,
                                    fillColor: Colors.grey[200]),
                              )),
                              SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10)),
                                width: 60,
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.heart_broken_rounded,
                                      size: 30,
                                      color: Colors.grey[600],
                                    )),
                              )
                            ]),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            child: Stack(children: [
                               Container(
                                alignment: Alignment.center,
                                child: ListTile(
                                  title: Text("A summer surprise",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  subtitle: Text("Cashback 20%",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30)),
                                ),
                                height: 150,
                                decoration: BoxDecoration(
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                          /*    Positioned(
                                top: -20,
                                right: -20,
                                child: Container(
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 15, 45, 100),
                                      borderRadius: BorderRadius.circular(160)),
                                      
                                ),
                                
                              )*/
                            ]),
                          ),
                          SizedBox(
                            height: 124,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                width: 10,
                              ),
                              itemCount: controller.categories.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 157, 171, 184),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      height: 90,
                                      width: 90,
                                      child: SvgPicture.network(
                                          "${AppLink.imagestCategories}/${controller.categories[index]['categories_image']}"),
                                    ),
                                    Text(
                                      "${controller.categories[index]['categories_name']}",
                                      style: TextStyle(fontSize: 14),
                                    )
                                  ],
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Recommended Products",
                              style: TextStyle(fontSize: 20)),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            
                              height: 300,
                              width: 200,
                              child: ListView.builder(
                                  itemCount: controller.items.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, i) {
                                    return Stack(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 10),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child:
                                          
                                          
                                           Image.network(
                                              "${AppLink.imagestItems}/${controller.items[i]['items_image']}",
                                              height: 200,
                                              width: 150,
                                              ),
                                        ),
                                       Container(
                                          decoration: BoxDecoration(
                                              color: AppColor.black
                                                  .withOpacity(0.1),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          height: 230,
                                          width: 200,
                                        ),
                                         Positioned(
                                          
                                            bottom: 80,
                                            child: Text(
                                              "${controller.items[i]['items_name']} ",
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ))
                                      ],
                                    );
                                  }))
                        ],
                      )),
                )));
  }
}
