import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlogsScreen extends StatefulWidget {
  BlogsScreen({super.key});

  @override
  State<BlogsScreen> createState() => _BlogsScreenState();
}

class _BlogsScreenState extends State<BlogsScreen> {
  // Dummy blog data
  List<Blog> blogs = [
    Blog(
        title: "Impotance of Agriculture",
        author: "Sharad Bisi",
        content:
            "Agriculture is vital for sustaining life, providing food, employment, economic stability, and environmental balance."),
    Blog(
        title: "Impotance of Fish farming",
        author: "Manish Bala",
        content:
            " Fish farming is crucial for food security, economic growth, and conservation, offering a sustainable protein source, livelihoods, and ecosystem balance."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Blogs'),
        backgroundColor: Colors.amber[300],
      ),
      body: ListView.builder(
        itemCount: blogs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(blogs[index].title),
            subtitle: Text(blogs[index].author),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlogPostPage(
                    title: blogs[index].title,
                    author: blogs[index].author,
                    content: blogs[index].content,
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WriteBlogPage(
                onSave: (blog) {
                  setState(() {
                    blogs.add(blog);
                  });
                },
              ),
            ),
          );
        },
        backgroundColor: Colors.amber[300],
        // child: const Icon(
        //   Icons.add,
        // ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(child: Text('Write Blog')),
        ),
      ),
    );
  }
}

//
class Blog {
  final String title;
  final String author;
  final String content;

  Blog({required this.title, required this.author, required this.content});
}

class BlogPostPage extends StatelessWidget {
  final String title;
  final String author;
  final String content;

  const BlogPostPage(
      {super.key,
      required this.title,
      required this.content,
      required this.author});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

//blog writting page
class WriteBlogPage extends StatelessWidget {
  final Function(Blog) onSave;

  WriteBlogPage({super.key, required this.onSave});

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(143, 3, 245, 225),
        title: const Text('Write Blog'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Title',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _authorController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Author Name',
                // hintText: 'write author name',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _contentController,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Content',
                alignLabelWithHint: true,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String title = _titleController.text;
                String content = _contentController.text;

                if (title.isNotEmpty && content.isNotEmpty) {
                  Blog newBlog = Blog(
                    title: title,
                    content: content,
                    author: "Anonymous",
                  );

                  onSave(newBlog);

                  Navigator.pop(context);
                } else {
                  // Show error message if title or content is empty
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please enter both title and content.'),
                    ),
                  );
                }
              },
              child: const Text('Publish'),
            ),
          ],
        ),
      ),
      bottomSheet: const Text('designed & developed by SHARAD',style: TextStyle(),),
    );
  }
}
