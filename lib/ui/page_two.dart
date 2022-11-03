import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  final String pageName;
  final bool isShowCheckbox;

  const PageTwo({
    required this.pageName,
    this.isShowCheckbox = true,
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PageTwoState();
  }
}

class _PageTwoState extends State<PageTwo> {
  var _isBackAllowed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pageName),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green[100],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              ..._bodyWidgets(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Iterable<Widget> _bodyWidgets() sync* {
    if (widget.isShowCheckbox) {
      yield CheckboxListTile(
        title: const Text('Allow back button'),
        value: _isBackAllowed,
        onChanged: (newValue) {
          setState(() {
            _isBackAllowed = newValue ?? true;
          });
        },
        controlAffinity:
            ListTileControlAffinity.leading, //  <-- leading Checkbox
      );
    }
    if (_isBackAllowed) {
      yield ElevatedButton(
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Back'),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      );
    }
  }
}
