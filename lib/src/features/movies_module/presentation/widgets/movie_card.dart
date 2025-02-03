part of '../../_lib.dart';

class MovieCard extends StatelessWidget {
  final String title;
  final String overview;
  final String? posterPath;

  const MovieCard({
    super.key,
    required this.title,
    required this.overview,
    this.posterPath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Movie Poster
          _image(),
          // Movie Details
          _description(),
        ],
      ),
    );
  }

  Expanded _description() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Text(
              overview,
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  Widget _image() {
    if (posterPath == null) {
      return Container(
        width: 120,
        height: 180,
        color: Colors.grey[300],
      );
    }
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        bottomLeft: Radius.circular(16),
      ),
      child: Image.network(
        "https://image.tmdb.org/t/p/w500$posterPath",
        width: 120,
        height: 180,
        errorBuilder: (context, error, stackTrace) =>
            Icon(Icons.error, size: 50),
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: 120,
            height: 180,
            color: Colors.grey[300],
            child: Center(child: CircularProgressIndicator()),
          );
        },
        /*      imageUrl: "https://image.tmdb.org/t/p/w500$posterPath",
            width: 120,
            height: 180,
            fit: BoxFit.cover,
            placeholder: (context, url) => Container(
              width: 120,
              height: 180,
              color: Colors.grey[300],
              child: Center(child: CircularProgressIndicator()),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error, size: 50), */
      ),
    );
  }
}
