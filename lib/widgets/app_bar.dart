import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        '',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          icon: const Icon(Symbols.calendar_month_rounded),
          onPressed: () async {
            // Show Date Picker
            // DateTime? pickedDate = await showDatePicker(
            //   context: context,
            //   initialDate: DateTime.now(),
            //   firstDate: DateTime(2025),
            //   lastDate: DateTime(2100),
            // );
          },
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/test');
          },
          borderRadius: BorderRadius.circular(50),
          child: const CircleAvatar(
            backgroundImage: AssetImage('image/male.png'), // User image
          ),
        ),
        const SizedBox(width: 15),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
