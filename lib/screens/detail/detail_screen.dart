import 'package:FoodShopApp/components/constants.dart';
import 'package:FoodShopApp/screens/detail/detailheader.dart';
import 'package:FoodShopApp/components/getlistCart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

import '../appbar.dart';

class MainDetail extends StatefulWidget
{

  @override
  _MainDetail createState() => _MainDetail();
}

class _MainDetail extends State<MainDetail>
{
  // #region StateFAB
  Widget fab = FloatingActionButton.extended
  (
    backgroundColor: kMainColor,
    onPressed: () => 
    {

    },
    label: Align
    (
      alignment: Alignment.centerLeft,
      child: Text
      (
        getlistCart().toString()
      ),
    ),
    icon : Icon
    (
      Icons.add_shopping_cart ,
      size: 30,
    ),
  ); 
  
  // _fabChange() async
  // {
  //   setState(() =>
  //   {
  //     fab = FloatingActionButton.extended
  //     (
  //       backgroundColor: kMainColor,
  //       key: UniqueKey(),
  //       onPressed: () => 
  //       {
  //       },
  //       label: Align
  //       (
  //         alignment: Alignment.centerLeft,
  //         child: Text
  //         (
  //           getlistCart().toString()
  //         ),
  //       ),
  //       icon : Icon
  //       (
  //         Icons.add_shopping_cart ,
  //         size: 30,
  //       ),
  //     )
  //   });
  // }
  
  // #endregion
  _MainDetail()
  {
    searchBar = new SearchBar
    (
      inBar: false,
      setState: setState,
      onSubmitted: print,
      buildDefaultAppBar: appbar
    );
  }
  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;
    return Scaffold
    (
      appBar:searchBar.build(context),

      floatingActionButton: fab,
      
      body: SingleChildScrollView
      (
        child: Column
        (
          children: <Widget>
          [
            HeaderDetail(size: size,)           
          ],
        ),
      )
    );
  }
}