import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Bookdetails extends StatefulWidget {
  const Bookdetails({super.key, required this.imagelink});
  final String imagelink;

  @override
  State<Bookdetails> createState() => _BookdetailsState();
}

class _BookdetailsState extends State<Bookdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Page'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imagelink),
                      fit: BoxFit.contain)),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                maxLines: 4,
                'Book Name :TO Kill A Mockingbird',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0,top : 5),
              child: Text(
                maxLines: 4,
                'Author Name : Smit.c.joshi',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
             const Padding(
              padding: EdgeInsets.only(left: 30.0,top : 5),
              child: Text(
                maxLines: 4,
                'Description :',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.07),
                  child: const Text(
                    maxLines: 100,
                    textAlign: TextAlign.justify,
                    'Atoms of radioactive elements can split. According to Albert Einstein, mass and energy are interchangeable under certain circumstances. When atoms split, the process is called nuclear fission. In this case, a small amount of mass is converted into energy. Thus the energy released cannot do much damage. However, several subatomic particles called neutrons are also emitted during this process. Each neutron will hit a radioactive element releasing more neutrons in the process. This causes a chain reaction and creates a large amount of energy. This energy is converted into heat which expands uncontrollably causing an explosion. Hence, atoms do not literally explode. They generate energy that can cause explosions.Atoms of radioactive elements can split. According to Albert Einstein, mass and energy are interchangeable under certain circumstances. When atoms split, the process is called nuclear fission. In this case, a small amount of mass is converted into energy. Thus the energy released cannot do much damage. However, several subatomic particles called neutrons are also emitted during this process. Each neutron will hit a radioactive element releasing more neutrons in the process. This causes a chain reaction and creates a large amount of energy. This energy is converted into heat which expands uncontrollably causing an explosion. Hence, atoms do not literally explode. They generate energy that can cause explosions.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: MediaQuery.of(context).size.height * 0.10,
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.blueAccent.shade100),
                    padding: const MaterialStatePropertyAll(EdgeInsets.all(15)),
                    fixedSize: const MaterialStatePropertyAll(Size(180, 50))
                    // Adjusted width
                    ),
                onPressed: () {},
                child: const Text('Add to Cart')),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.blueAccent.shade100),
                    padding: const MaterialStatePropertyAll(EdgeInsets.all(15)),
                    fixedSize: const MaterialStatePropertyAll(Size(170, 50))
                    // Adjusted width
                    ),
                onPressed: () {},
                child: const Text('Request Book'))
          ],
        ),
      ),
    );
  }
}
