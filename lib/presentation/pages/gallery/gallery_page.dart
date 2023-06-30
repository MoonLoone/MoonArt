
import 'package:flutter/material.dart';

import '../../../di/service_locator.dart';
import '../../../domain/models/art.dart';
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
                "Error: " + error.toString(),
              ),
            );
          } else if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return const Center(
                child: Text('No data'),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                final art = snapshot.data?[index];
                return ListTile(
                  title: Text(art?.title ?? ''),
                  subtitle: Text(art?.origin ?? ''),
                );
              },
            );
          }
          return Container();
        });
  }
}
