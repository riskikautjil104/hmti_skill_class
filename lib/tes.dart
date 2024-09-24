// import 'package:flutter/material.dart';

// void main() {
//   runApp(InstagramClone());
// }

// class InstagramClone extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: InstagramHome(),
//     );
//   }
// }

// class InstagramHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Instagram Clone'),
//         actions: [
//           IconButton(icon: Icon(Icons.send), onPressed: () {}),
//         ],
//       ),
//       body: ListView(
//         children: [
//           _buildStorySection(),
//           _buildPost(),
//           _buildPost(),
//           _buildPost(),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
//           BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Add'),
//           BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Likes'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//       ),
//     );
//   }

//   Widget _buildStorySection() {
//     return Container(
//       height: 100,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: [
//           _buildStoryItem(),
//           _buildStoryItem(),
//           _buildStoryItem(),
//           _buildStoryItem(),
//         ],
//       ),
//     );
//   }

//   Widget _buildStoryItem() {
//     return Container(
//       width: 80,
//       margin: EdgeInsets.all(8.0),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         image: DecorationImage(
//           image: NetworkImage('https://placekitten.com/200/200'),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }

//   Widget _buildPost() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         ListTile(
//           leading: CircleAvatar(
//             backgroundImage: NetworkImage('https://placekitten.com/200/200'),
//           ),
//           title: Text('Username'),
//           trailing: Icon(Icons.more_vert),
//         ),
//         Image.network('https://placekitten.com/800/400'),
//         Row(
//           children: [
//             IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
//             IconButton(icon: Icon(Icons.comment), onPressed: () {}),
//             IconButton(icon: Icon(Icons.send), onPressed: () {}),
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text('Liked by user1 and 99 others'),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//           child: Text('View all 10 comments'),
//         ),
//       ],
//     );
//   }
// }