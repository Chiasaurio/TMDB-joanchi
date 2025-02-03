part of '../../_lib.dart';

class MainPageMoviesModule extends StatefulWidget {
  const MainPageMoviesModule({super.key});

  @override
  State<MainPageMoviesModule> createState() => _MainPageMoviesModuleState();
}

class _MainPageMoviesModuleState extends State<MainPageMoviesModule> {
  final MoviesListState _state = MoviesListState();

  @override
  void initState() {
    super.initState();
    _state.init();
    _state.getTopMovies();
  }

  final Debouncer _debouncer = Debouncer(milliseconds: 1000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification is ScrollEndNotification &&
                  notification.metrics.extentAfter == 0) {
                _state.setPage(_state.page + 1);

                if (_state.queryController.text.isNotEmpty) {
                  _state.searchMovies(paginated: true);
                  return false;
                }

                _state.getTopMovies(paginated: true);
              }
              return false;
            },
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
  }

  SliverToBoxAdapter _searchBar() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SearchBar(
          controller: _state.queryController,
          onChanged: (value) {
            _debouncer.run(() async {
              _state.setPage(1);

              if (value.isNotEmpty) {
                _state.searchMovies();
                return;
              }

              _state.getTopMovies();
            });
          },
        ),
      ),
    );
  }

  Widget _moviesList() {
    return ListenableBuilder(
      listenable: _state,
      builder: (context, child) {
        /*    if (_state.loading) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } */

        return SliverList.builder(
          itemCount: _state.movies.length,
          itemBuilder: (context, index) {
            final movie = _state.movies[index];
            return MovieCard(
              title: movie.title,
              overview: movie.overview,
              posterPath: movie.posterPath,
            );
          },
        );
      },
    );
  }
}
