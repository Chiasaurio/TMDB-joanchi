part of '../../_lib.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => NavigatorMoviesModule.pushMovieDetails(movie),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _image(),
            _description(),
          ],
        ),
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
              movie.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Text(
              movie.overview,
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
    if (movie.posterPath == null) {
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
        "https://image.tmdb.org/t/p/w500${movie.posterPath}",
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
      ),
    );
  }
}
