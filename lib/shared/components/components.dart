import 'package:flutter/material.dart';

Widget defaultButton({
   double width=double.infinity,
   Color background=Colors.blue,
   bool isUpperCase=true,
   double radius =10.0,
   required Function function,
   required String text,
}) =>
    Container(
  width:width ,
  child: MaterialButton(
    onPressed: function(),
    height: 50.0,
    child: Text(
      isUpperCase ? text.toUpperCase(): text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius,),
        color: background,
      ),
);

Widget defaultFromField({
  required TextEditingController controller,
  required TextInputType type,
  //Function onSubmit,
 // Function onChanged,
  required Function validate,
  required String label,
  required IconData prefix,
  bool isPassword =false,
  required  suffix,
  required  suffixPressed,
})=>TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  onFieldSubmitted: (String value){
    print(value);
  },
  onChanged: (String value){
    print(value);
  },
  validator:validate(),
  decoration:InputDecoration(
    labelText: label,
    prefixIcon: Icon(
    prefix,
    ),
      suffixIcon:suffix != null ? IconButton(
        onPressed: suffixPressed(),
        icon: Icon(
            suffix,
        ),
      ): null,
    border: OutlineInputBorder(),
  ),
);