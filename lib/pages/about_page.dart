import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/profile_picture.jpg'),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Text(
                  'Nadirah Mohd Razak',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade200,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Biography',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade200,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'I am a dynamic and adaptable professional based in Ipoh, Perak. With a strong linguistic background in Malay (native), English (fluent), and Japanese (SPM certified), I thrive in fast-paced environments and is known for my ability to learn and adjust quickly. My keen interest in technology and problem-solving is evident from my academic and professional experiences.\n\nMy strengths include my rapid learning capability, adaptability, and strong problem-solving skills. I am particularly skilled in mobile application development using Flutter and has hands-on experience with various programming languages and development tools. My background in Cognitive Science provides me with a unique perspective on user experience and behavior, making me adept at creating intuitive and effective solutions.\n\nHowever, I acknowledges that I am continuously working on balancing her perfectionism with practical deadlines, striving to ensure that my high standards do not hinder me efficiency. I am committed to personal and professional growth and actively seeks opportunities to enhance my skills and knowledge.\n\nMy interests include staying updated with the latest in technology, exploring new software tools, and engaging in coding challenges. Outside of my technical pursuits, I enjoy reading, analyzing mobile games, and practicing Japanese language skills through conversations and media.\nWith a diverse background in technical roles and project management, I am enthusiastic about leveraging my skills and experiences to contribute effectively to innovative projects and teams.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Personality (INFP-A)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade200,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'I am an INFP-A, which means I am an Introverted, Intuitive, Feeling, and Perceiving person with an Assertive twist. This personality type makes me introspective and deeply reflective, often finding joy in exploring ideas and possibilities. My introverted nature allows me to focus deeply on tasks and think things through thoroughly, which is why I excel at problem-solving and coming up with creative solutions.\n\nI am highly empathetic and value authenticity in myself and others. This makes me a supportive team member who listens actively and tries to understand different perspectives. I strive to create a positive and harmonious environment wherever I go, and I’m always willing to lend a helping hand.\n\nBeing intuitive, I tend to see the big picture and am always curious about what’s beyond the surface. This trait helps me in innovation and in finding unique approaches to challenges. I enjoy exploring new concepts and continuously learning, which aligns perfectly with my passion for technology and cognitive science.\n\nAs a feeling type, I make decisions based on my values and the impact they will have on people. I am driven by a desire to make a meaningful difference and am passionate about projects that have a positive impact.\n\Lastly, my assertive nature ensures that I remain confident and optimistic, even in the face of challenges. I trust my abilities and am resilient, which helps me adapt and persevere through difficult situations.\n\nOverall, my INFP-A personality shapes me into a compassionate, innovative, and determined individual who is ready to tackle any challenge with a positive and open-minded approach.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'About my Bachelor’s Degree',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade200,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Cognitive Science is an interdisciplinary field that digs into the study of the mind and its processes. It integrates knowledge from psychology, artificial intelligence, linguistics, neuroscience, anthropology, and philosophy to explore how people think, learn, remember, and interact with the world. This degree equips students with a comprehensive understanding of human cognition, behavior, and the mechanisms underlying mental processes.\n\nThroughout the program, students engage with a range of topics including perception, decision-making, language acquisition, and problem-solving. By combining theoretical knowledge with practical applications, Cognitive Science prepares graduates to address complex issues related to human intelligence and behavior. This background is particularly valuable in fields like user experience design, artificial intelligence, and educational technology, where understanding human cognition is crucial for creating effective and intuitive solutions.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton.icon(
                  onPressed: _playAudio,
                  icon: Icon(Icons.play_arrow),
                  label: Text('Play Introduction'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade200,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _playAudio() async {
    final player = AudioPlayer();
    await player.play(AssetSource('assets/Says It Kiss Of Life.mp3'));
  }
}
