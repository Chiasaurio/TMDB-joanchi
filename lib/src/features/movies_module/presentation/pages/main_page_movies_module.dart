part of '../../_lib.dart';

class MainPageMoviesModule extends StatefulWidget {
  const MainPageMoviesModule({super.key});

  @override
  State<MainPageMoviesModule> createState() => _MainPageMoviesModuleState();
}

class _MainPageMoviesModuleState extends State<MainPageMoviesModule> {
  late MoviesListModel _model;

  final Debouncer _debouncer = Debouncer(milliseconds: 1000);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesListModel>(
      builder: (context, model, child) {
        _model = model;
        return Scaffold(
          body: SafeArea(
            child: _scrollListener(
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomScrollView(
                  slivers: [
                    _searchBar(),
                    _moviesList(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _scrollListener(Widget child) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollEndNotification &&
            notification.metrics.extentAfter == 0) {
          _model.setPage(_model.page + 1);

          if (_model.queryController.text.isNotEmpty) {
            _model.searchMovies(paginated: true);
            return false;
          }

          _model.getTopMovies(paginated: true);
        }
        return false;
      },
      child: child,
    );
  }

  SliverToBoxAdapter _searchBar() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SearchBar(
          controller: _model.queryController,
          onChanged: (value) {
            _debouncer.run(() async {
              _model.setPage(1);

              if (value.isNotEmpty) {
                _model.searchMovies();
                return;
              }

              _model.getTopMovies();
            });
          },
        ),
      ),
    );
  }

  Widget _moviesList() {
    return ListenableBuilder(
      listenable: _model,
      builder: (context, child) {
        return SliverList.builder(
          itemCount: _model.movies.length,
          itemBuilder: (context, index) {
            final movie = _model.movies[index];
            return MovieCard(
              movie: movie,
            );
          },
        );
      },
    );
  }
}
