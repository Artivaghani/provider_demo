import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/Model/addcirclemodel.dart';
import 'package:providerdemo/provider/spday_provider.dart';

class GetListForTest extends StatelessWidget {
  const GetListForTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SpdayProvider>().getdata(context);
    
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: context.read<SpdayProvider>().isloading
            ? Center(child: const CircularProgressIndicator())
            : context.read<SpdayProvider>().connectionlist == null
                ? const Text('data not found')
                : ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: context
                        .read<SpdayProvider>()
                        .connectionlist!
                        .customer!
                        .length,
                    itemBuilder: (context, index) {
                      Customer data = context
                          .read<SpdayProvider>()
                          .connectionlist!
                          .customer![index];
                      return Text(data.firstName ?? '');
                    }),
      ),
    ));
  }
}
