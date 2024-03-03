import 'package:clone_app_amc/component/card_movie.dart';
import 'package:clone_app_amc/database/data_layer.dart';
import 'package:clone_app_amc/page/tab_bar/bloc/tab_bar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class SeeAMovie extends StatelessWidget {
  SeeAMovie({super.key, required this.titlePage});
  final String titlePage;

  @override
  Widget build(BuildContext context) {
    final data = GetIt.I.get<DataLayer>().onlyShow;

    return BlocProvider(
      create: (context) => TabBarBloc(),
      child: Builder(builder: (context) {
        context.read<TabBarBloc>().add(TabSelect(0));
        GetIt.I.get<DataLayer>().onlyShowFun(0);

        return DefaultTabController(
            length: GetIt.I.get<DataLayer>().listFilter.length,
            initialIndex: 0,
            child: SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
                  actions: [
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      child: Text("$titlePage",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ],
                  leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.white)),
                      child: const Icon(
                        Icons.person_outline_outlined,
                        color: Colors.white,
                        size: 30,
                      )),
                  bottom: TabBar(
                      onTap: (int index) {
                        print(index);
                        BlocProvider.of<TabBarBloc>(context)
                            .add(TabSelect(index));
                        GetIt.I.get<DataLayer>().onlyShowFun(index);
                      },
                      indicatorWeight: 3,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: Colors.blue,
                      dividerColor: const Color.fromRGBO(30, 30, 30, 1),
                      labelColor: Colors.white,
                      tabs: GetIt.I.get<DataLayer>().listFilter,
                      isScrollable: false),
                ),
                body: BlocBuilder<TabBarBloc, TabBarState>(
                    builder: (context, state) {
                  if (state is TabState) {
                    return GridView.builder(
                        shrinkWrap: true,
                        itemCount: data.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 11 / 17
                        ),
                        itemBuilder: (context, number) {
                          return state.index == data[number].isShow
                              ? CardMovie(movie: data[number])
                              : Column(
                                  children: [],
                                );
                        });
                  }
                  return Container();
                }),
              ),
            ));
      }),
    );
  }
}
