import 'dart:ui';
import 'package:flutter/material.dart';
import '../data/recipes_data.dart';
import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Fade-in animation
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [

          // 🔥 Background Image
          SizedBox.expand(
            child: Image.asset(
              'assets/images/homepage.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // Slight dark overlay
          Container(
            color: Colors.black.withOpacity(0.4),
          ),

          SafeArea(
            child: Column(
              children: [

                const SizedBox(height: 30),

                const Text(
                  "Recipe Book",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 30),

                Expanded(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 800),
                    opacity: _opacity,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      itemCount: sampleRecipes.length,
                      itemBuilder: (context, index) {
                        final recipe = sampleRecipes[index];

                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10),
                          child: Center(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(25),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 15, sigmaY: 15),
                                child: Container(
                                  width: screenWidth * 0.85,
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.white
                                        .withOpacity(0.15),
                                    borderRadius:
                                        BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Colors.white
                                          .withOpacity(0.3),
                                    ),
                                  ),
                                  child: ListTile(
                                    contentPadding:
                                        EdgeInsets.zero,
                                    leading: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(12),
                                      child: Image.asset(
                                        recipe.imagePath,
                                        width: 60,
                                        height: 60,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    title: Text(
                                      recipe.name,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight:
                                            FontWeight.w600,
                                      ),
                                    ),
                                    trailing: const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) =>
                                              DetailsScreen(
                                                  recipe: recipe),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}