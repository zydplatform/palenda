import 'package:flutter/material.dart';
import 'package:palenda/classes/language.dart';
import 'package:palenda/classes/language_constants.dart';
import 'package:palenda/main.dart';

class MyAppBar extends PreferredSize {
  final Widget child;
  final double height;
  final Color color;

  MyAppBar({required this.child,
    required this.color,
    this.height = kToolbarHeight,}) : super(child: child, preferredSize: Size(100,200));

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.blue,
      //leading: Icon(Icons.menu),
      title: Text(translation(context).targetInvest),  
          automaticallyImplyLeading: false,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {}
              //=> Navigator.of(context).pop(),
            ), 
      actions: <Widget>[        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton<Language>(
            underline: const SizedBox(),
            icon: const Icon(
              Icons.language,
              color: Colors.white,
            ),
            onChanged: (Language? language) async {
              if (language != null) {
                Locale _locale = await setLocale(language.languageCode);
                MyApp.setLocale(context, _locale);
              }
            },
            items: Language.languageList()
                .map<DropdownMenuItem<Language>>(
                  (e) => DropdownMenuItem<Language>(
                    value: e,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          e.flag,
                          style: const TextStyle(fontSize: 30),
                        ),
                        Text(e.name)
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}