import 'package:flutter/material.dart';
import 'package:get_info_app/widget/textfield_widget.dart';

class GetInfoPage extends StatefulWidget {
  const GetInfoPage({super.key});

  @override
  State<GetInfoPage> createState() => _GetInfoPageState();
}

class _GetInfoPageState extends State<GetInfoPage> {
  late FocusNode textFieldFocus;

  @override
  void initState() {
    textFieldFocus = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    textFieldFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            const Divider(height: 80),
            SizedBox(
              height: size.height * 0.4,
              child: Card(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.zero,
                child: ListView.separated(
                  itemCount: 10,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) => ListTile(
                    title: Text('Text $index'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
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
            const Divider(),
            TextFieldWidget(
              autofocus: true,
              focusNode: textFieldFocus,
              textAlign: TextAlign.center,
              widthFactor: 1,
              hintText: 'Digite algo...',
            ),
          ],
        ),
      ),
    );
  }
}
