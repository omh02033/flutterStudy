import 'package:flutter/cupertino.dart';
import 'package:flutterstudy/src/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Provider",
            style: CupertinoTheme.of(context).textTheme.navTitleTextStyle
          ),
          Consumer<CountControllerWithProvider>(builder: (_, snapshot, child){
            return Text(
              "${snapshot.count}",
              style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle
            );
          }),
          CupertinoButton(
            child: Text('+', style: TextStyle(
              fontSize: 50,
            ),),
            onPressed: () {
              Provider.of<CountControllerWithProvider>(context, listen: false).increase();
            }
          ),
        ],
      ),
    );
  }
}