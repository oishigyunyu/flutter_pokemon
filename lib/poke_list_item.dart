import 'package:flutter/material.dart';
import './poke_detail.dart';
import './models/pokemon.dart';
import './const/pokeapi.dart';

class PokeListItem extends StatelessWidget {
  const PokeListItem({Key? key, required this.pokes}) : super(key: key);
  final Pokemon? pokes;
  @override
  Widget build(BuildContext context) {
    if (pokes != null) {
      return ListTile(
        leading: Container(
          width: 80,
          decoration: BoxDecoration(
            color: (pokeTypeColors[pokes!.types.first] ?? Colors.grey[100])
                ?.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                  pokes!.imageUrl,
                )),
          ),
        ),
        title: Text(
          pokes!.name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(pokes!.types.first),
        trailing: const Icon(Icons.navigate_next),
        onTap: () => {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => const PokeDetail(),
            ),
          ),
        },
      );
    } else {
      return const ListTile(
        title: Text('...'),
      );
    }
  }
}
