import 'package:flutter/material.dart';

class stacklayoutscreen extends StatefulWidget {
  const stacklayoutscreen({super.key});

  @override
  State<stacklayoutscreen> createState() => _stacklayoutscreenState();
}

class _stacklayoutscreenState extends State<stacklayoutscreen> {
  stackword() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 400,
          height: 400,
          color: Colors.amber,
        ),
        Container(
          height: 400,
          width: 400,
          color: Colors.green,
          child: Image.network(
              'https://imgs.search.brave.com/jKqqIeLcCHlpVJAIhi0eV6iVtAAJL_N7hpsKLiOOPrA/rs:fit:844:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5E/R0tJbmVFX3Rydmxq/WGw0cXM2ZDhBSGFF/SyZwaWQ9QXBp'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('Stack Screen'))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              stackword(),
              stackword(),
            ],
          ),
        ));
  }
}






// import 'package:flutter/material.dart';

// class stacklayoutscreen extends StatefulWidget {
//   const stacklayoutscreen({super.key});

//   @override
//   State<stacklayoutscreen> createState() => _stacklayoutscreenState();
// }

// class _stacklayoutscreenState extends State<stacklayoutscreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Center(child: Text('Stack Screen'))),
//       body: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Container(
//             width: 400,
//             height: 400,
//             color: Colors.amber,
//             child: const Center(child: Text('First Container')),
//           ),
//           Positioned(
//             top: 1,
//             right: 1,
//             child: Container(
//               height: 100,
//               width: 100,
//               color: Colors.green,
//               child: const Center(child: Text('second ')),
//             ),
//           ),
//           Positioned(
//             bottom: -55,
//             right: 150,
//             child: Container(
//               height: 100,
//               width: 100,
//               color: Colors.green,
//               child: const Center(child: Text('Third')),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
