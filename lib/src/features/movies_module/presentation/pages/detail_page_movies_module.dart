part of '../../_lib.dart';

class DetailPageMoviesModule extends StatefulWidget {
  final Movie movie;
  const DetailPageMoviesModule({super.key, required this.movie});

  @override
  State<DetailPageMoviesModule> createState() => _DetailPageMoviesModuleState();
}

class _DetailPageMoviesModuleState extends State<DetailPageMoviesModule> {
  late MoviesListModel _model;

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesListModel>(
      builder: (context, model, child) {
        _model = model;
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.movie.title, overflow: TextOverflow.ellipsis),
          ),
          body: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              _image(),
              SizedBox(height: 20),
              _title(),
              SizedBox(height: 8),
              _language(),
              SizedBox(height: 8),
              _popularity(),
              SizedBox(height: 8),
              _adultRated(),
              SizedBox(height: 20),
              _overview(),
            ],
          ),
        );
      },
    );
  }

  Column _overview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Overview",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          widget.movie.overview,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }

  Widget _adultRated() {
    if (!widget.movie.adult) return SizedBox();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: getColor.error,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "18+ Adult",
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }

  Row _popularity() {
    return Row(
      children: [
        Icon(Icons.trending_up, color: getColor.warning),
        SizedBox(width: 5),
        Text(
          "Popularity: ${widget.movie.popularity.toStringAsFixed(1)}",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Text _language() {
    return Text(
      "Language: ${widget.movie.originalLanguage.toUpperCase()}",
      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
    );
  }

  Text _title() {
    return Text(
      widget.movie.title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _image() {
    if (widget.movie.posterPath == null) return SizedBox();
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          "https://image.tmdb.org/t/p/w500${widget.movie.posterPath}",
          width: 120,
          height: 180,
          errorBuilder: (context, error, stackTrace) =>
              Icon(Icons.broken_image, size: 100),
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
