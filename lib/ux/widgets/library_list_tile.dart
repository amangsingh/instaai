import 'package:flutter/material.dart';

/// The list tile widget to display the LLM library.
class LibraryListTile extends StatelessWidget {
  /// The constructure of the library list tile.
  const LibraryListTile({
    required this.id,
    super.key,
  });

  /// The id of the library item.
  final String id;

  @override
  Widget build(BuildContext context) {
    // The widget is encased in a padding widget for better view seperation.
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListTile(
        title: const Text('Transformer 1'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // The description of the transformer.
            const Text('Transformer 1 Description'),

            // The progress of the download.
            Row(
              children: [
                Text(
                  'Progress',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const VerticalDivider(),
                Expanded(
                  child: LinearProgressIndicator(
                    minHeight: 6,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const VerticalDivider(),
                Text(
                  '100%',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),

        // The trailing action buttons for download and conversion to CoreML.
        trailing: OverflowBar(
          spacing: 8,
          children: [
            FloatingActionButton.small(
              heroTag: null,
              onPressed: () {},
              tooltip: 'Download Library',
              child: const Icon(Icons.download),
            ),
            FloatingActionButton.small(
              heroTag: null,
              onPressed: () {},
              tooltip: 'Convert to CoreML',
              child: const Icon(Icons.transform),
            ),
          ],
        ),
      ),
    );
  }
}
