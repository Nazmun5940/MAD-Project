import 'package:flutter/material.dart';
import 'package:fitme/models/fitness_article.dart';

import 'article_detail_screen.dart';

class MentalWellnessScreen extends StatelessWidget {
  final List<FitnessArticle> articles = const [
    FitnessArticle(
      title: 'Introduction to Meditation',
      summary:
          'Learn how meditation can reduce stress and improve mental clarity.',
      content: '''
# Introduction to Meditation

Meditation is a powerful practice that can transform your mental wellness, reduce stress, and improve your overall quality of life.

## Benefits of Regular Meditation
- Reduces stress and anxiety
- Improves focus and concentration
- Enhances self-awareness
- Promotes emotional health
- Improves sleep quality
- May reduce age-related memory loss

## Getting Started with Meditation
Meditation doesn't have to be complicated. Here's a simple way to begin:

### Basic Breath Meditation (5 minutes)
1. Find a quiet, comfortable place to sit
2. Set a timer for 5 minutes
3. Close your eyes and focus on your breathing
4. Notice the sensation of air entering and leaving your nostrils
5. When your mind wanders, gently bring attention back to your breath
6. Continue until your timer ends

## Types of Meditation
1. **Mindfulness Meditation**
   - Focus on your breath and present moment
   - Notice thoughts without judgment as they pass

2. **Body Scan Meditation**
   - Progress through your body, noticing sensations
   - Release tension in each area as you go

3. **Loving-Kindness Meditation**
   - Focus on developing feelings of goodwill
   - Direct positive wishes toward yourself and others

## Tips for Beginners
- Start with just 5 minutes daily
- Meditate at the same time each day
- Don't judge yourself for wandering thoughts
- Use guided meditations if helpful
- Be patient and consistent

Remember that meditation is a practice. It's normal for your mind to wander, and bringing it back is part of the exercise. With regular practice, you'll find it becomes easier to maintain focus and experience the benefits.
      ''',
      imageUrl: 'assets/images/meditation.jpg',
      category: 'Meditation',
    ),
    FitnessArticle(
      title: 'Managing Stress Effectively',
      summary:
          'Practical techniques to reduce stress and maintain emotional balance.',
      content: '''
# Managing Stress Effectively

Stress is a natural part of life, but chronic stress can negatively impact your physical and mental health. Here are effective strategies to manage stress:

## Understanding Stress
Stress is your body's response to demands or threats. While short-term stress can be motivating, chronic stress can lead to:
- Headaches and muscle tension
- Sleep problems
- Digestive issues
- Anxiety and depression
- Weakened immune system

## Stress Management Techniques

### 1. Physical Approaches
- **Regular exercise**: Releases endorphins and reduces stress hormones
- **Deep breathing**: Try the 4-7-8 technique (inhale for 4, hold for 7, exhale for 8)
- **Progressive muscle relaxation**: Tense and release each muscle group
- **Adequate sleep**: Aim for 7-9 hours nightly

### 2. Mental Approaches
- **Mindfulness practice**: Stay present rather than worrying about past/future
- **Cognitive reframing**: Challenge negative thought patterns
- **Time management**: Prioritize tasks and set boundaries
- **Gratitude practice**: Daily noting of things you're thankful for

### 3. Lifestyle Changes
- **Limit caffeine and alcohol**: Both can increase anxiety
- **Healthy diet**: Emphasize whole foods, limit processed foods
- **Connect socially**: Quality time with supportive people
- **Limit news consumption**: Take breaks from media

## Daily Stress-Relief Routine
1. Morning: 5 minutes of deep breathing or meditation
2. Throughout day: Brief mindfulness breaks (1-2 minutes)
3. Evening: 15-20 minutes of relaxing activity (reading, bath, gentle stretching)
4. Bedtime: No screens 30-60 minutes before sleep, calming bedtime routine

## When to Seek Help
If stress feels overwhelming or interferes with daily functioning, consider speaking with a mental health professional. Many effective treatments exist for stress-related conditions.

Remember that stress management is highly individual. Experiment with different techniques to find what works best for you, and be patient as you develop new habits.
      ''',
      imageUrl: 'assets/images/stress_management.jpg',
      category: 'Stress Management',
    ),
    FitnessArticle(
      title: 'The Science of Happiness',
      summary:
          'Evidence-based strategies to increase joy and life satisfaction.',
      content: '''
# The Science of Happiness

Happiness isn't just a pleasant emotion—it's linked to better health, stronger relationships, and increased productivity. Here's what science tells us about cultivating genuine happiness:

## What is Happiness?
Researchers distinguish between two types of happiness:
- **Hedonic well-being**: Temporary pleasure and positive emotions
- **Eudaimonic well-being**: Deeper life satisfaction, meaning, and purpose

Both are important, but lasting happiness comes more from eudaimonic well-being.

## Happiness Practices Backed by Science

### 1. Cultivate Relationships
- Spend quality time with loved ones
- Practice active listening
- Express appreciation regularly
- Offer help to others

### 2. Practice Gratitude
- Keep a gratitude journal (3 things daily)
- Write thank-you notes
- Mental gratitude practice during routine activities

### 3. Find Flow
- Engage in activities that fully absorb you
- Choose challenges that match your skill level
- Minimize distractions during flow activities

### 4. Move Your Body
- 30 minutes of moderate exercise most days
- Nature walks for added mental health benefits
- Mind-body exercises like yoga or tai chi

### 5. Contribute to Something Larger
- Volunteer for causes you care about
- Mentor others
- Random acts of kindness

## Common Happiness Myths
- **Myth**: More money equals more happiness
  **Reality**: Beyond meeting basic needs, happiness from income increases level off

- **Myth**: Happiness comes from getting what you want
  **Reality**: Adaptation means we quickly return to baseline after getting what we want

- **Myth**: You either are or aren't a happy person
  **Reality**: Happiness skills can be developed with practice

## Happiness Habit-Builder
Start small with one 5-minute happiness practice daily. Choose from:
- Writing down 3 things you're grateful for
- Sending an appreciative message to someone
- 5 minutes of mindfulness meditation
- Brief physical activity you enjoy

Remember that happiness isn't about feeling good all the time—it's about having the emotional resources to navigate life's ups and downs with resilience and purpose.
      ''',
      imageUrl: 'assets/images/happiness.jpg',
      category: 'Positive Psychology',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mental Wellness')),
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
      case 'Meditation':
        return Icons.self_improvement;
      case 'Stress Management':
        return Icons.spa;
      case 'Positive Psychology':
        return Icons.sentiment_very_satisfied;
      default:
        return Icons.psychology;
    }
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'Meditation':
        return Colors.purple;
      case 'Stress Management':
        return Colors.teal;
      case 'Positive Psychology':
        return Colors.amber;
      default:
        return Colors.indigo;
    }
  }
}
