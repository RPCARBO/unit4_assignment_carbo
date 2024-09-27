import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF6A9C89), // Background color of whole app
        appBar: AppBar(
          title: Text(
            'RALPH PABLO OMAHOY CARBO - MY BIOGRAPHY', // Header title
            style: TextStyle(
              fontSize: 30, 
              fontWeight: FontWeight.bold, // Bolded text
            ),
          ),
          backgroundColor: const Color(0xFF227B94), // Header background color
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile section with Row
              Container(
                color: const Color.fromARGB(255, 233, 229, 229), // Profile section background
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/Carbo.jpg',
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Ralph Pablo O. Carbo', 
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Information Table for the 3 componets
              Container(
                color: const Color.fromARGB(255, 233, 229, 229), // Background color for the table section
                child: Table(
                  children: [
                    infoRow(Icons.email, 'Email', 'ralphpablo.carbo@wvsu.edu.ph'),
                    infoRow(Icons.phone, 'Phone', '927 932 3276'),
                    infoRow(Icons.location_on, 'Location', 'Balabago, Jaro, Iloilo City'),
                    infoRow(Icons.school, 'Education', 'West Visayas State University - BS Computer Science'),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Biography Section
              Container(
                color: const Color.fromARGB(255, 233, 229, 229), // Background for biography section
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Biography',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Hi, I’m Ralph Pablo O. Carbo, born on November 13, 2003, in Iloilo City. My childhood was filled with the outdoors and devouring junk food and filipino snacks like turon,Nova, and Piatos ! And I loved playing videos games back then with my friends.'
                      'I attended Iloilo National High School, majoring in visual arts, where I developed my creativity. Later, I shifted to Accountancy, Business, and Management (ABM) in senior high school to explore my interest in business.'
                      'Now, I’m pursuing computer science at West Visayas State University, I was driven by my passion for technology at a young age and its potential impact on the future. I’m excited to combine my artistic background with my technical studies to innovate and solve problems.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Container(
                color: const Color.fromARGB(255, 233, 229, 229), // Background color for the hobbies section
                padding: const EdgeInsets.all(12.0),
                height: 250, // Increased height for vertical layout
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'My Hobbies',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Increased font size
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.7, // Aspect ratio for verticality
                        children: [
                          hobbyColumn('assets/pokemongo.jpg', 'Pokemon Go', 'I love playing Pokemon Go during my free time and catching wild pokemons, especially since it forces me to go outside and walk it fights against the CompScis sedentary lifestyle.'), 
                          hobbyColumn('assets/drawing.jpg', 'Drawing', 'I enjoy drawing little doodles and the world around me, I find it enjoyable using a pen than a pencil as it makes the piece more permanent and more solid.'), 
                          hobbyColumn('assets/Reading.jpg', 'Reading', 'Reading books helps me relax and unwind especially late at night after classes are over and my work is finished.'), 
                        ],
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
  }
  // Function for creating a row in the table
  TableRow infoRow(IconData icon, String label, String data) {
  return TableRow(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0), // Reduced horizontal padding
        child: Icon(icon, color: Colors.teal, size: 24), // Adjust icon size if needed
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0), // Reduced horizontal padding
        child: Text(label, style: TextStyle(fontSize: 16)), // Adjust font size if needed
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0), // Reduced horizontal padding
        child: Text(data, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)), // Adjust font size if needed
      ),
    ],
  );
}

  Widget hobbyColumn(String imagePath, String title, String description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipOval(
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: 80, 
            height: 80,
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Increase font size for title if needed
        ),
        SizedBox(height: 5),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14), // 
        ),
      ],
    );
  }
}
