import 'package:flutter/material.dart';
import 'package:flutter_theme/theme/theme_constants.dart';
import 'package:flutter_theme/theme/theme_manager.dart';

import 'constants/color_const.dart';

void main() {
  runApp( MyApp());
}
ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener(){
    if(mounted){
      setState(() {
        print('changing theme value finally ');
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      debugShowCheckedModeBanner : false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark=Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Theme"),
        actions: [
          Switch(value: _themeManager.themeMode==ThemeMode.dark, onChanged: (newValue){
            _themeManager.toggleTheme(newValue);
          })
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:   [
            Card(
              elevation: 10.0,
              child: Padding(padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Icon(Icons.account_box,size: 150,color: COLOR_CONST.gray400,),
                    SizedBox(height: 20,),
                    Text('User Name',style: _textTheme.headline5?.copyWith(color: isDark?COLOR_CONST.white:COLOR_CONST.gray800),),
                    const SizedBox(height: 10,),
                    Text('Put some dummy text as user bio.',style: _textTheme.subtitle1?.copyWith(color: isDark?COLOR_CONST.white:COLOR_CONST.gray600),),
                  ],
                ),),
            ),
            SizedBox(height: 20,),
            Card(
              elevation: 6.0,
              child: Padding(padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 20,),
                    Text('Something interesting about user.'),
                    SizedBox(height: 10,),
                    TextField(),
                    SizedBox(height: 20,),
                  ],
                ),),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: const Text("Click Button")),
            const SizedBox(height: 20,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}
