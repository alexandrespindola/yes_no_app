import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Text(
              'Hello World',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        _ImageBubble(),
        const SizedBox(
          height: 10,
        )

        // TODO: image
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    print(size);

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          'https://yesno.wtf/assets/no/25-55dc62642f92cf4110659b3c80e0d7ec.gif',
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) => loadingProgress == null
              ? child
              : const Center(
                  child: CircularProgressIndicator(),
                )
          ),
    );
  }
}
