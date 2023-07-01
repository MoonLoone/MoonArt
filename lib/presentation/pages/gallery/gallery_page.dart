import 'package:flutter/material.dart';
import 'package:moon_art/domain/models/art.dart';

import '../../../di/service_locator.dart';
import 'gallery_controller.dart';

class Gallery extends StatelessWidget {
  Gallery({super.key});

  final homeController = getIt<GalleryController>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Art>>(
        future: homeController.getArts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            final error = snapshot.error;
            return Center(
              child: Text(
                "Error: $error",
              ),
            );
          } else if (snapshot.hasData) {
            if (snapshot.data?.isEmpty ?? false) {
              return const Center(
                child: Text('No data'),
              );
            }
            return GridView.builder(
              itemCount: snapshot.data?.length ?? 0,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                final art = snapshot.data?[index];
                return Image.network(art?.imageUrl ?? "");
              },
            );
          }
          return Container();
        });
  }
}
