import 'package:flutter/material.dart';
import 'package:fitme/models/fitness_article.dart';
import 'article_detail_screen.dart';

class PhysicalFitnessScreen extends StatelessWidget {
  final List<FitnessArticle> articles = const [
    FitnessArticle(
      title: 'Getting Started with Strength Training',
      summary:
          'Learn the basics of strength training and how to build muscle effectively.',
      content: '''
# Getting Started with Strength Training

Strength training is essential for building muscle mass, improving metabolism, and enhancing overall fitness. Here's how to get started:

## Key Benefits
- Builds lean muscle mass
- Boosts metabolism
- Improves bone density
- Enhances functional fitness
- Reduces risk of injury

## Basic Principles
1. **Progressive Overload**: Gradually increase the weight, frequency, or repetitions
2. **Proper Form**: Focus on technique before increasing weight
3. **Consistency**: Train regularly (2-3 times per week)
4. **Recovery**: Allow muscle groups to recover (48 hours between training same muscle)

## Beginner's Workout Plan

### Full Body Workout (3x per week)
- Squats: 3 sets of 10 reps
- Push-ups: 3 sets of 10 reps
- Dumbbell rows: 3 sets of 10 reps per arm
- Lunges: 3 sets of 10 reps per leg
- Planks: 3 sets of 30 seconds

Start with light weights and focus on form. Rest 60-90 seconds between sets.

## Nutrition Tips
- Consume adequate protein (0.8-1g per pound of bodyweight)
- Eat sufficient calories to support muscle growth
- Stay hydrated
- Focus on whole foods
- Eat within 1-2 hours after training

Remember that progress takes time. Be patient, stay consistent, and adjust your routine as you get stronger.
      ''',
      imageUrl: 'assets/images/strength_training.jpg',
      category: 'Strength Training',
    ),
    FitnessArticle(
      title: 'Cardio for Heart Health',
      summary:
          'Improve your cardiovascular fitness with these effective cardio exercises.',
      content: '''
# Cardio for Heart Health

Cardiovascular exercise is crucial for heart health, endurance, and overall wellness. Here's how to make the most of your cardio workouts:

## Benefits of Cardio Exercise
- Strengthens your heart
- Improves lung capacity
- Helps manage weight
- Reduces stress and anxiety
- Improves sleep quality

## Types of Cardio Exercise
1. **Low-Intensity Steady-State (LISS)**
   - Walking, light jogging, cycling at a steady pace
   - 30-60 minutes at 50-65% of max heart rate
   - Great for beginners and recovery days

2. **Moderate-Intensity Cardio**
   - Jogging, swimming, elliptical training
   - 20-30 minutes at 65-75% of max heart rate
   - Good balance of intensity and duration

3. **High-Intensity Interval Training (HIIT)**
   - Alternating between intense bursts and recovery periods
   - Example: 30 seconds sprint, 90 seconds walk, repeat 10 times
   - Efficient and time-saving (10-20 minutes total)

## Getting Started
- Aim for 150 minutes of moderate cardio per week
- Start with 3 sessions per week
- Begin with walking if you're new to exercise
- Gradually increase intensity and duration

## Cardio Without Equipment
- Jumping jacks
- High knees
- Burpees
- Mountain climbers
- Squat jumps

Remember to warm up before and cool down after each session. Listen to your body and progress at your own pace.
      ''',
      imageUrl: 'assets/images/cardio.jpg',
      category: 'Cardio',
    ),
    FitnessArticle(
      title: 'Nutrition for Optimal Performance',
      summary: 'Fuel your body properly to reach your fitness goals faster.',
      content: '''
# Nutrition for Optimal Performance

Proper nutrition is the foundation of fitness success. Here's how to fuel your body for optimal performance:

## Macronutrients
1. **Protein**
   - Essential for muscle repair and growth
   - Sources: chicken, fish, eggs, dairy, legumes, tofu
   - Aim for 0.8-1g per pound of bodyweight daily

2. **Carbohydrates**
   - Primary energy source for workouts
   - Sources: whole grains, fruits, vegetables, legumes
   - Timing matters: consume complex carbs 2-3 hours before training

3. **Fats**
   - Important for hormone production and recovery
   - Sources: avocados, nuts, seeds, olive oil, fatty fish
   - Should make up 20-35% of daily calories

## Meal Timing
- **Pre-workout** (1-2 hours before): Easily digestible carbs + moderate protein
  Example: Banana and Greek yogurt

- **Post-workout** (within 45 minutes): Protein + carbs
  Example: Protein shake with fruit or chicken with rice

- **Throughout the day**: Balanced meals with all macronutrients

## Hydration
- Drink 0.5-1 oz of water per pound of bodyweight daily
- Add 16-20 oz for every hour of exercise
- Monitor urine color (pale yellow indicates good hydration)

## Supplements to Consider
- Protein powder (for convenience)
- Creatine (for strength and power)
- Omega-3s (for recovery and inflammation)

Remember that whole foods should be the foundation of your diet. Supplements are just that—supplements to an already solid nutrition plan.
      ''',
      imageUrl: 'assets/images/nutrition.jpg',
      category: 'Nutrition',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Physical Fitness')),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return Card(
            margin: EdgeInsets.only(bottom: 16),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArticleDetailScreen(article: article),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      color: Colors.grey[300],
                      child: Center(
                        child: Icon(
                          _getCategoryIcon(article.category),
                          size: 50,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          article.title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          article.summary,
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: _getCategoryColor(
                                  article.category,
                                ).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Text(
                                article.category,
                                style: TextStyle(
                                  color: _getCategoryColor(article.category),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Read more',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 16,
                              color: Theme.of(context).primaryColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case 'Strength Training':
        return Icons.fitness_center;
      case 'Cardio':
        return Icons.directions_run;
      case 'Nutrition':
        return Icons.restaurant;
      default:
        return Icons.sports;
    }
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'Strength Training':
        return Colors.red;
      case 'Cardio':
        return Colors.blue;
      case 'Nutrition':
        return Colors.green;
      default:
        return Colors.purple;
    }
  }
}
