import 'package:flutter/material.dart';
import 'story_page.dart';
import 'story_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Story list
    final List<Story> stories = [
      Story(
        name: "The Lost Kitten",
        author: "John Doe",
        imagePath: "assets/1.png",
        description:
            "Lily found a tiny kitten crying under a bush. She gently picked it up and looked around for its owner. Unable to find anyone, she brought it home. She named the kitten Whiskers and gave it milk. That evening, Lily and her dad found a 'Lost Kitten' poster. They returned Whiskers to a little boy who was overjoyed. Grateful for Lily's kindness, the boy gave her a handmade bracelet as a thank-you gift. Though she missed Whiskers, Lily felt happy knowing she had done the right thing..",
      ),
      Story(
        name: "Timmy and the Magic Seeds",
        author: "Jane Smith",
        imagePath: "assets/2.png",
        description:
            "Timmy loved gardening. One day, he received a packet of glowing seeds from a traveling wizard. Curious, he planted them. Overnight, colorful flowers bloomed, each whispering kind words like 'Believe in yourself' and 'Be brave.' Timmy shared the seeds with his friends, and soon their gardens bloomed too, filling the town with joy and positivity. Timmy learned that spreading kindness grows happiness for everyone.",
      ),
      Story(
        name: "Ella’s Big Adventure",
        author: "Jane Smith",
        imagePath: "assets/3.png",
        description:
            "Ella the squirrel wanted to climb the tallest tree. Her friends warned her it was dangerous, but Ella was determined. Slowly and carefully, she climbed. At the top, she saw a breathtaking view of the forest. Birds and butterflies fluttered nearby, amazed by her courage. When she returned, Ella told her friends about the magical sights, inspiring them to face their fears and explore new heights too.",
      ),
      Story(
        name: "Benny’s Missing Hat",
        author: "Jane Smith",
        imagePath: "assets/4.png",
        description:
            "Benny the bear loved his red hat. One windy day, it blew away. Benny searched everywhere but couldn’t find it. Then, he noticed birds carrying pieces of red fabric to build a nest. Benny smiled and let them keep it. Later, the birds sang Benny a special song, thanking him for his kindness. Benny realized sharing brought more joy than keeping the hat.",
      ),
      Story(
        name: "The Shy Star",
        author: "Jane Smith",
        imagePath: "assets/5.webp",
        description:
            "In the night sky, one star always hid behind clouds. 'I’m too small to shine,' it thought. One night, a little girl made a wish on that very star. Surprised, the star twinkled brightly, realizing even small stars can make dreams come true. From then on, the shy star shone proudly, lighting up the sky for everyone.",
      ),
      Story(
        name: "Milo and the Talking Frog",
        author: "Jane Smith",
        imagePath: "assets/6.webp",
        description:
            "Milo found a frog in his garden. To his surprise, it spoke! 'If you help me, I'll grant a wish,' said the frog. Milo fixed the frog’s broken lily pad and let it go. 'What’s your wish?' the frog asked. Milo wished for a beautiful garden for his mom. The next morning, flowers of every color bloomed. Milo’s mom was delighted, and he learned the joy of giving.",
      ),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            "STORY",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        body: ListView.builder(
          itemCount: stories.length,
          itemBuilder: (context, index) {
            final story = stories[index];
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoryPage(story: story),
                    ),
                  );
                },
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage(story.imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 25),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              story.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              story.author,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
