import 'package:flutter/material.dart';

void main() {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                leading: Icon(
                  Icons.arrow_back_sharp,
                  size: 40,
                ),
                leadingWidth: 90,
                title: Text(
                  "Bio-data",
                )),
            body: ListView(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    // decoration: BoxDecoration(color:Colors.white70,border: Border.all(width: 0.5),borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(30),
                    // color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Center(
                        //     child: Expanded(
                        //         child: CircleAvatar(
                        //   radius: 56,
                        //   child: Padding(
                        //     padding: EdgeInsets.all(8),
                        //     child: Image.network('https://picsum.photos/200'),
                        //   ),
                        //   // child: Image.network('https://picsum.photos/200',width: 100,height: 100,),
                        // ))),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: Image.network('https://picsum.photos/200',width: 100,height: 100,),
                          ),
                          // child: ClipOval(
                          //   child: SizedBox.fromSize(
                          //     size: Size.fromRadius(48),
                          //     child: Image.network(
                          //       'https://picsum.photos/200',
                          //       fit: BoxFit.cover,
                          //     ),
                          //   ),
                          // ),
      
                        ),
      
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Itunuoluwa Abidoye",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "Itunuoluwa@petra.africa",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    )),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'What is your first name',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'And Your Last Name',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ],
            )),
      ),
    );
  }
}
