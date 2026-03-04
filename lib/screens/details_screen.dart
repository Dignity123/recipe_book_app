import 'dart:ui';
import 'package:flutter/material.dart';
import '../models/recipe.dart';

class DetailsScreen extends StatefulWidget {
  final Recipe recipe;

  const DetailsScreen({super.key, required this.recipe});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Trigger fade-in after build (Extra feature)
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final recipe = widget.recipe;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [

          // Background image
          SizedBox.expand(
            child: Image.asset(
              recipe.imagePath,
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

                // Back + Title
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back,
                            color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                      Expanded(
                        child: Text(
                          recipe.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 48),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Expanded(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 800),
                    opacity: _opacity,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [

                          // INGREDIENTS GLASS CARD 
                          _glassCard(
                            width: screenWidth * 0.85, 
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Ingredients",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                ...recipe.ingredients.map(
                                  (ingredient) => Padding(
                                    padding:
                                        const EdgeInsets.symmetric(
                                            vertical: 6),
                                    child: Text(
                                      "• $ingredient",
                                      style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 30),

                          // INSTRUCTIONS GLASS CARD
                          _glassCard(
                            width: screenWidth * 0.85,
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Instructions",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                ...List.generate(
                                  recipe.instructions.length,
                                  (index) => Padding(
                                    padding:
                                        const EdgeInsets.symmetric(
                                            vertical: 8),
                                    child: Text(
                                      "${index + 1}. ${recipe.instructions[index]}",
                                      style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 50),
                        ],
                      ),
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

  // Reusable Glass Card Widget
  Widget _glassCard({required double width, required Widget child}) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            width: width,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Colors.white.withOpacity(0.3),
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}