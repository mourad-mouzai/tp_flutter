import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class AppBarGen extends StatefulWidget implements PreferredSizeWidget {
  const AppBarGen({super.key});

  @override
  State<AppBarGen> createState() => _AppBarGenState();

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

class _AppBarGenState extends State<AppBarGen> {
  SampleItem? selectedMenu;
  final TextEditingController nameText = TextEditingController();
  final TextEditingController emailText = TextEditingController();
  final TextEditingController birthDate = TextEditingController();

  @override
  void initState() {
    super.initState();
    birthDate.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveBreakpoints.of(context).largerThan(TABLET)
              ? 120.0
              : ResponsiveBreakpoints.of(context).isTablet
                  ? 40.0
                  : 0.0,
        ),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(26),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
            hintText: 'Search',
            hintStyle: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            prefixIcon: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  color: Colors.black45,
                ),
              ),
            ),
            suffixIcon: const Icon(
              Icons.mic,
              color: Colors.black45,
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.amber,
      centerTitle: true,
      actions: [
        PopupMenuButton<SampleItem>(
          icon: const Icon(Icons.more_vert),
          initialValue: selectedMenu,
          // Callback that sets the selected popup menu item.
          onSelected: (SampleItem item) {
            setState(() {
              selectedMenu = item;
              switch (selectedMenu) {
                case SampleItem.itemOne:
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => showFormDialog(context),
                  );
                  break;
                case SampleItem.itemTwo:
                  break;
                case SampleItem.itemThree:
                  break;
                default:
              }
            });
          },
          itemBuilder: (BuildContext context) =>
              const <PopupMenuEntry<SampleItem>>[
            PopupMenuItem<SampleItem>(
              value: SampleItem.itemOne,
              child: ListTile(
                leading: Icon(Icons.add_circle_outline),
                title: Text('Add User'),
              ),
            ),
            PopupMenuItem<SampleItem>(
              value: SampleItem.itemTwo,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ),
            PopupMenuItem<SampleItem>(
              value: SampleItem.itemThree,
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  AlertDialog showFormDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Add User'),
      content: SizedBox(
        height: 240,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameText,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                hintText: 'Name',
                helperText: 'You have to enter your name',
                hintStyle: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.black45,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            TextField(
              controller: emailText,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                hintText: 'Email',
                helperText: 'You have to enter a valide email',
                hintStyle: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Icon(
                    Icons.email,
                    color: Colors.black45,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            TextField(
              controller: birthDate,
              decoration: InputDecoration(
                labelText: 'Birth date',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                hintText: 'Birth date',
                helperText: 'You have to enter your birth date',
                hintStyle: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Icon(
                    Icons.calendar_month_rounded,
                    color: Colors.black45,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              readOnly: true,
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                );
                if (picked != null && picked != DateTime.now()) {
                  setState(() {
                    birthDate.text = picked.toString();
                  });
                }
              },
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            print(nameText.text);
            print(emailText.text);
            Navigator.pop(context, 'OK');
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
