import 'package:flutter/material.dart';
import 'package:instaai/ux/widgets/library_list_tile.dart';

/// The dashboard which consolidates all information and key
/// actions of the application.
class Dashboard extends StatelessWidget {
  /// The constructure of the dashboard.
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // The Column widget containing the dashboard content
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // The title of the dashboard.
        Text(
          'Library Manager',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Divider(),

        /// The main content of the dashboard.
        /// This content is divided into two columns.
        /// The first column shows the LLM library and the second
        /// column shows the CoreML library.
        /// The LLM library shows the list of transformers and
        /// the CoreML library shows the list of models.
        /// The user can fetch the transformers library, download
        /// selected transformers, and download the selected models.
        /// The user can also view the progress of the download.
        Expanded(
          child: Row(
            children: [
              // The first column showing the LLM library.
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // The title of the LLM library.
                    const Text('LLM Library'),
                    const Divider(color: Colors.transparent),

                    // The action chips to fetch and download the transformers.
                    OverflowBar(
                      spacing: 8,
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ActionChip(
                          label: const Text('Fetch Transformers Library'),
                          onPressed: () {},
                        ),
                        ActionChip(
                          label: const Text('Download Selected'),
                          onPressed: () {},
                        ),
                      ],
                    ),

                    // The list of transformers.
                    Expanded(
                      // Using a separated list view to show the transformers.
                      child: ListView.separated(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          // Calling the LibraryListTile widget to show the
                          // transformer.
                          return const LibraryListTile(id: 'id');
                        },

                        // Adding a divider between the transformers.
                        separatorBuilder: (context, index) => const Divider(),
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalDivider(),

              // The second column showing the CoreML library.
              const Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // The title of the CoreML library.
                    Text('CoreML Library'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
