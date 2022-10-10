// Topics i will cover
/*
1. Array 
2. object
3. array data add remove
4. object data change
5. json decode and encode
6. arrray length check
7. foreach  method
8. template string
9. function using
10. function sum system
11. array data check is have or not
12. data find
13. data map
14. slice system
15. Array data sort 
16. duplicate data find and remove
17. Array index fetch
18. filter
19. join more array
20. localstorage use by flutter project

////////////// extra some ////////// already i knews
1. conditional if,else if , else
2. switch case
3. boolean condition
4. logical and relational and mathmetical operation
5. varriable declaration
6. class use

*/

import 'dart:convert';

void main() {
  //1. array uses
  final List<dynamic> mylist = ["Hello", 12, true, "Hi"];
  // print(mylist);
  final len = mylist.length;
  // print(len);
  // 2. Object declaration , array of object
  final Map<String, dynamic> myobj = {"name": "shahin alam", "year": 2001};
  // print(myobj);
  // array of object
  const List<Map<String, dynamic>> arrOfObj = [
    {
      "product": "Mens cap",
      "price": 200,
      "categort": "Men fashion",
      "vendor": "Vip shop"
    },
    {
      "product": "Speaker",
      "price": 2000,
      "categort": "Sound box",
      "vendor": "Vip shop"
    },
    {
      "product": "Laptop",
      "price": 200000,
      "categort": "Apple",
      "vendor": "Vip shop"
    },
    {
      "product": "Camera",
      "price": 40000,
      "categort": "Cemon",
      "vendor": "Vip shop"
    }
  ];
  // print(arrOfObj);
// 3. array data add and remove
  final List<int> myIntArr = [1, 2, 3, 4, 5, 200, 20, 40];
  final List<int> addArr = [6, 7, 8, 9, 8];
  myIntArr.addAll(addArr);
  // print(myIntArr);
  myIntArr.add(100); // add single data
  print(myIntArr);
  // reduce can summetion all data that exist an array
  final total = myIntArr.reduce((value, element) => value + element);
  // print(total);
  // remove where
  myIntArr.removeWhere((element) => element == 100); //condition base remove
  // print(myIntArr);
  myIntArr.retainWhere((element) => (element / 2) == 0); //condition base return
  // print(myIntArr);
  myIntArr.remove(20); // remove by array element
  // 4. Object data change
  final Map<String, dynamic> mystrObj = {"name": "Shahin", "age": 21};
  mystrObj['name'] = "Nayem";
  // print(mystrObj);
  // array of object
  final List<Map<String, dynamic>> mychangeObjArr = [
    {
      "product_name": "I phone 13 pro max",
      "price": 120000,
      "currency": "bdt",
      "brand": "I phone"
    },
    {
      "product_name": "I phone 12 pro max",
      "price": 110000,
      "currency": "bdt",
      "brand": "I phone"
    },
    {
      "product_name": "I phone 14 pro max",
      "price": 100000,
      "currency": "bdt",
      "brand": "I phone"
    }
  ];

  mychangeObjArr[2]['price'] = 200000;
  // print(mychangeObjArr);

  // 5. json data decode and encode
  final List<Map<String, dynamic>> data = [
    {"name": "Shahin alam", "age": 21, "inst": "Dhaka university"},
    {"name": "Ramim hossen", "age": 24, "inst": "Rajshahi university"}
  ];
  final toJson = jsonEncode(data); // json converted
  // print(data);
  // print(toJson);
  final covertArrObj = jsonDecode(toJson); // convert json data to array

  // Array lenngth check
  const List<dynamic> myarr = [2, 3, 4, 5, "Nayem Hasan"];
  final dynamicArrlen = myarr.length;
  // print(dynamicArrlen);
  // 7. foreach method
  final List<String> myStrArr = ["Shahin", "Nayem", "Ab", "Rashed"];
  myStrArr.forEach((name) {
    // print(name);
  });

  //8. template string
  const String name = "shahin alam";
  final stmt = "Hello my name is $name";
  // print(stmt);
  // 9. function using
  // call function
  // print(myFun("Ab Rahman"));
  // print(sum(2, 4));

// 10. fundtion sum system already used in num 9
// 11. Check array data exit or not
  final List<int> dataarr = [10, 13, 14, 15];
  final isIxist = dataarr.contains(11);
  final index = dataarr.indexOf(100);
  // print(isIxist);
  // print(index); // if not found in array then it will return -1
// 12. data find
//  this option similar as a number 3
// myDatas.skipWhile((value) => false);
  final List<int> myintval = [12, 13, 15, 16, 17];
  final resData = myintval.where((element) => element <= 15);
  // print(resData); // its return a iterator that wrap with a parenthesis(...)
  // convert to an array
  final toListconvert = resData.toList();
  // print(toListconvert);
//13. data map .... more array join or find any data
// almost similar to js mapping stystem
  final productName = arrOfObj.map((e) => e['product']);
  print(productName); // return will as a iterator , conver as a list
  final converaslist = productName.toList();
  // print(converaslist);
// 14. slice system
  final List<String> mysliceStr = [
    "shahin alam",
    "Nayem Hasan",
    "Tamanna Vatia"
  ];
  final resss = mysliceStr.sublist(1, 2);
  // print(resss);

  // print(mysliceStr);

// 15. array data sory
  List<Map<String, dynamic>> myProducts = [
    {"name": "Shoes", "price": 100},
    {"name": "Pants", "price": 50},
    {"name": "Book", "price": 10},
    {"name": "Lamp", "price": 40},
    {"name": "Fan", "price": 200}
  ];

  // Selling price from low to high
  myProducts.sort((a, b) => a["price"].compareTo(b["price"]));
  print('Low to hight in price: $myProducts');

  // Selling price from high to low
  myProducts.sort((a, b) => b["price"].compareTo(a["price"]));
  print('High to low in price: $myProducts');

//16. duplicate data find and remove
  List<int> dataInt = [1, 2, 3, 4, 5, 1, 6, 3, 7, 7, 9, 2, 5];

  print(dataInt);
  // how to remove duplicate data from an array
  var distinctIds = [
    ...{...dataInt}
  ];

  print(distinctIds);
// 17. array index already used
// 18. filter alredt used as where method
// 19. array join similar as js spred operator
  final dat1 = [12, 13, 14, 15];
  final dat2 = [13, 19, 12, 19];
  final newArr = [...dat1, ...dat2];
  // print(newArr);

  // 20. Local storage use with flutter


}

dynamic myFun(name) {
  return "hello world ! Iam $name";
}

// math opetation
dynamic sum(num1, num2) {
  return num1 + num2;
}
