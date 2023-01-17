import 'package:flutter/material.dart';
import 'package:testportal_suitmedia/models/list_user_model.dart';
import 'package:testportal_suitmedia/services/reqres_services.dart';
import 'package:testportal_suitmedia/utils/constants.dart';
import 'package:testportal_suitmedia/views/third_screen/widgets/app_bar_third_screen_widget.dart';

class ThirdScreen extends StatefulWidget {
  static const String routeName = 'third-screen';
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final listData = <ListUserModel>[];
  @override
  void initState() {
    // WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
    // final listUser = Provider.of<ListUserProvider>(context,listen: false);
    // listUser.fetchListUsers(); });
    // super.initState();

  }
  @override
  Widget build(BuildContext context) {

       Future refreshData()async {
    listData.clear();
    await Future.delayed(Duration(seconds: 2));
    }
    var size = MediaQuery.of(context).size;
    
    return Scaffold(
      appBar: appBarWidgetThirdScreen(context),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: FutureBuilder<List<ListUserModel>>(
          future: ReqresServices().fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: const CircularProgressIndicator());
            } else {
              if (snapshot.hasData) {
                return RefreshIndicator(
                  onRefresh: refreshData,
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: size.height * 0.020,
                                vertical: size.width * 0.020),
                            leading: SizedBox(
                              height: size.height * 0.220,
                              width: size.width * 0.220,
                              child: CircleAvatar(
                                  backgroundImage: NetworkImage('${snapshot.data![index].avatar}'),
                                  ),
                            ),
                            title: Text('${snapshot.data![index].firstName} '+' ${snapshot.data![index].lastName} ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text(
                              '${snapshot.data![index].email}'.toUpperCase(),
                              style:
                                  TextStyle(fontSize: Constants.fontSemiSmall),
                            ),
                          ),
                          Divider(
                            thickness: 0.8,
                            indent: 25.0,
                            endIndent: 25.0,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      );
                    },
                  ),
                );
              }
              return const Text('Tidak ada data');
            }
          },
        ),
      ),
    );
  }
}
