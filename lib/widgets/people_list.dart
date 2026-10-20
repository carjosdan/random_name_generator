import 'package:random_name_generator/random_name_generator.dart';
import 'package:flutter/material.dart';
import '../../styles/app_styles.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({super.key});

  @override
  State<PeopleList> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  final _suggestions = <String>[];
  final _randomNames = RandomNames(Zone.spain);
  
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, i) {
          if (i >= _suggestions.length) {
            for (var j = 0; j < 10; j++) {
              _suggestions.add(_randomNames.fullName());
            }
          }
          return Container(
            color: AppStyles.rowBackgroundColor(i), // Actualiza color de fondo de la fila según el índice
            child: ListTile(
              title: Text(
                _suggestions[i],
                style: AppStyles.smallFont, 
              ),
              onTap: () {
                // Limpia snacks
                ScaffoldMessenger.of(context).clearSnackBars(); 
                // Mostramos el SnackBar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    padding: AppStyles.padd16,
                    content: Text(
                      'Seleccionaste: ${_suggestions[i]}',
                      style: AppStyles.bigFont,
                    ),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
            ),
          );
        },
        separatorBuilder: (context, index) => AppStyles.divider,
        itemCount: 1000,
      );
  }
}
