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
import 'package:flutter/material.dart';

void main() => runApp(InstagramUI());

class InstagramUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.system, 
      home: InstagramHomePage(),
    );
  }
}

class InstagramHomePage extends StatefulWidget {
  @override
  _InstagramHomePageState createState() => _InstagramHomePageState();
}

class _InstagramHomePageState extends State<InstagramHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          InstagramStory(),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return InstagramPost();
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box, color: Colors.white),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library, color: Colors.white),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class InstagramPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://randomuser.me/api/portraits/men/1.jpg'),

              ),
              SizedBox(width: 8.0),
              Text('username'),
              Spacer(),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Image.asset('assets/tugasBesar1234.png'),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.chat_bubble_outline  ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.bookmark_border),
              onPressed: () {},
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'disukai oleh otong dan 1 lainya',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('descripsi postingan anda ta'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'selengkapnya komen',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

class InstagramStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5.0),
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.red, width: 2.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://randomuser.me/api/portraits/men/$index.jpg',
                    ),
                  ),
                ),
              ),
              Text('user$index'),
            ],
          );
        },
      ),
    );
  }
}
