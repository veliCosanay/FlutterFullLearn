import 'package:flutter/material.dart';
import 'package:flutter_learn_01/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {

  var user9 = PostModel8(body: 'a');
  @override
  void initState() {
    super.initState();

    final user = PostModel();
    user.body = 'a';

    final user2 = PostModel2(1, 1, 'title', 'body');
    user2.body = 'a';

    final user3 = PostModel3(1, 1, 'a', 'b');
    // user3.body = 'a';

    final user4 = PostModel4(userID: 1, id: 1, title: 'title', body: 'body');
    // user4.body = 'a';

    final user5 = PostModel5(userID: 1, id: 1, title: 'title', body: 'body');
    // user5.

    final user6 = PostModel6(userID: 1, id: 1, title: 'title', body: 'body');
    // user6.

    final user7 = PostModel7();
    // user7.

    final user8 = PostModel8(body: 'body');
    // user8.body ='a';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user9.body ?? 'Not have data'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          user9 = user9.copyWith(title: 'vc');
          user9.updateBody('b');
        });
      },),
    );
  }
}
