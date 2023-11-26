import 'package:flutter/material.dart';
import 'package:get_info_app/widget/textfield_widget.dart';

class GetInfoPage extends StatelessWidget {
  const GetInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            Expanded(
              flex: 5,
              child: Card(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.zero,
                child: ListView.separated(
                  itemCount: 10,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) => ListTile(
                    title: Text('Text $index'),
                    trailing: Expanded(
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.delete)),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.edit),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Divider(color: Colors.transparent),
            const TextFieldWidget(
              textAlign: TextAlign.center,
              widthFactor: 1,
              hintText: 'Digite algo...',
            ),
            const Spacer(flex: 2)
          ],
        ),
      ),
    );
  }
}
