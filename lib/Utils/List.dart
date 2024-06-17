import 'package:flutter/material.dart';
List categoryStore=[];
List Favorite = [];
List Quote_Type_Categories = [
  {
    'home_Icon': Icons.emoji_emotions_outlined,
    'home_Text': 'Motivation',
    'home_color': Color(0xff27A7CF)
  },
  {
    'home_Icon': Icons.star_border_purple500_rounded,
    'home_Text': 'Inspiration',
    'home_color': Color(0xff2AA274)
  },
  {
    'home_Icon': Icons.favorite,
    'home_Text': 'Love',
    'home_color': Color(0xffB3994D)
  },
  {
    'home_Icon': Icons.add_a_photo_outlined,
    'home_Text': 'For Photos',
    'home_color': Color(0xffA87BEA)
  },
  {
    'home_Icon': Icons.phone_iphone_rounded,
    'home_Text': 'For Status',
    'home_color': Color(0xff27A7CF)
  },
  {
    'home_Icon': Icons.sentiment_dissatisfied_rounded,
    'home_Text': 'Anxiety',
    'home_color': Color(0xff2AA274)
  },
  {
    'home_Icon': Icons.personal_injury_outlined,
    'home_Text': 'Suicide  ',
    'home_color': Color(0xffB3994D)
  },
  {
    'home_Icon': Icons.rocket_outlined,
    'home_Text': 'Business',
    'home_color': Color(0xffA87BEA)
  },
  {
    'home_Icon': Icons.emoji_events_outlined,
    'home_Text': 'Overcoming',
    'home_color': Color(0xff27A7CF)
  },
  {
    'home_Icon': Icons.sports_handball_outlined,
    'home_Text': 'Positivity',
    'home_color': Color(0xff2AA274)
  },
  {
    'home_Icon': Icons.volunteer_activism_outlined,
    'home_Text': 'Depression',
    'home_color': Color(0xffB3994D)
  },
  {
    'home_Icon': Icons.psychology_outlined,
    'home_Text': 'Move on',
    'home_color': Color(0xffA87BEA)
  },
];

class QuoteModel {
  String? quote;
  String? author;
  String? cate;

  QuoteModel({this.author, this.quote, this.cate});

  List<QuoteModel> quoteModel_List = [];

  factory QuoteModel.fromquote(Map m1) {
    return QuoteModel(
        author: m1['author'], quote: m1['quote'], cate: m1['cate']);
  }

  QuoteModel.toList({required List l1}) {
    for (int i = 0; i < l1.length; i++) {
      quoteModel_List.add(QuoteModel.fromquote(l1[i]));
    }
  }
}
List category = [
  'Motivation',
  'Love',
  'Inspiration',
  'Sad',
  'Buisness',
  'Overcoming',
  'Positivity',
  'Depration',
  'Move on',
  'Photos',
  'Status',
  'Sucide',
];
/*List Quote_Type_Categories = [
  {
    'home_Icon': Icons.emoji_emotions_outlined,
    'home_Text': 'Motivation',
    'home_color': Color(0xff27A7CF)
  },
  {
    'home_Icon': Icons.star_border_purple500_rounded,
    'home_Text': 'Inspiration',
    'home_color': Color(0xff2AA274)
  },
  {
    'home_Icon': Icons.favorite,
    'home_Text': 'Love',
    'home_color': Color(0xffB3994D)
  },
  {
    'home_Icon': Icons.add_a_photo_outlined,
    'home_Text': 'For Photos',
    'home_color': Color(0xffA87BEA)
  },
  {
    'home_Icon': Icons.favorite,
    'home_Text': 'Reflection',
    'home_color': Color(0xff27A7CF)
  },
  {
    'home_Icon': Icons.star_border_purple500_outlined,
    'home_Text': 'Message of Encouragement',
    'home_color': Color(0xff2AA274)
  },
  {
    'home_Icon': Icons.star_border_purple500_outlined,
    'home_Text': 'For Status',
    'home_color': Color(0xffB3994D)
  },
  {
    'home_Icon': Icons.star_border_purple500_outlined,
    'home_Text': 'Anxiety',
    'home_color': Color(0xffA87BEA)
  },
  {
    'home_Icon': Icons.star_border_purple500_outlined,
    'home_Text': 'ShreeMad Bhagwat Geeta ',
    'home_color': Colors.blueAccent
  },
  {
    'home_Icon': Icons.star_border_purple500_outlined,
    'home_Text': 'Business',
    'home_color': Color(0xff2AA274)
  },
  {
    'home_Icon': Icons.star_border_purple500_outlined,
    'home_Text': 'Overcoming',
    'home_color': Color(0xffB3994D)
  },
  {
    'home_Icon': Icons.star_border_purple500_outlined,
    'home_Text': 'Positivity',
    'home_color': Color(0xffA87BEA)
  },
  {
    'home_Icon': Icons.star_border_purple500_outlined,
    'home_Text': 'Depression',
    'home_color': Colors.blueAccent
  },
  {
    'home_Icon': Icons.star_border_purple500_outlined,
    'home_Text': 'Good Morning',
    'home_color': Color(0xff2AA274)
  },
  {
    'home_Icon': Icons.star_border_purple500_outlined,
    'home_Text': 'Self Esteem',
    'home_color': Color(0xffB3994D)
  },
  {
    'home_Icon': Icons.star_border_purple500_outlined,
    'home_Text': 'Short Quotes',
    'home_color': Color(0xffA87BEA)
  },
  {
    'home_Icon': Icons.star_border_purple500_outlined,
    'home_Text': 'Move on',
    'home_color': Colors.blueAccent
  },
];*/

// Map quotesMap = {
//
//
//     {
//       'categories':'Motivation',
//       'quote': 'The best way to get started is to quit talking and begin doing.',
//       'author': 'Walt Disney'
//     },
//     {
//       'quote':
//       'The pessimist sees difficulty in every opportunity. The optimist sees opportunity in every difficulty.',
//       'author': 'Winston Churchill'
//     },
//     {
//       'quote': 'Don’t let yesterday take up too much of today.',
//       'author': 'Will Rogers'
//     },
//     {
//       'quote':
//       'You learn more from failure than from success. Don’t let it stop you. Failure builds character.',
//       'author': 'Unknown'
//     },
//     {
//       'quote': 'It’s not whether you get knocked down, it’s whether you get up.',
//       'author': 'Vince Lombardi'
//     },
//     {
//       'quote':
//       'If you are working on something that you really care about, you don’t have to be pushed. The vision pulls you.',
//       'author': 'Steve Jobs'
//     },
//     {
//       'quote':
//       'People who are crazy enough to think they can change the world, are the ones who do.',
//       'author': 'Rob Siltanen'
//     },
//     {
//       'quote':
//       'Failure will never overtake me if my determination to succeed is strong enough.',
//       'author': 'Og Mandino'
//     },
//     {
//       'quote':
//       'Entrepreneurs are great at dealing with uncertainty and also very good at minimizing risk. That’s the classic entrepreneur.',
//       'author': 'Mohnish Pabrai'
//     },
//     {
//       'quote': 'We may encounter many defeats but we must not be defeated.',
//       'author': 'Maya Angelou'
//     },
//
//   'Love':[
//     {
//       'quote': 'Love is composed of a single soul inhabiting two bodies.',
//       'author': 'Aristotle'
//     },
//     {
//       'quote': 'To love and be loved is to feel the sun from both sides.',
//       'author': 'David Viscott'
//     },
//     {
//       'quote':
//       'Being deeply loved by someone gives you strength, while loving someone deeply gives you courage.',
//       'author': 'Lao Tzu'
//     },
//     {
//       'quote': 'The best thing to hold onto in life is each other.',
//       'author': 'Audrey Hepburn'
//     },
//     {
//       'quote':
//       'Love is when the other person\'s happiness is more important than your own.',
//       'author': 'H. Jackson Brown, Jr.'
//     },
//     {
//       'quote': 'To love and be loved is to the greatest happiness of existence.',
//       'author': 'Sydney Smith'
//     },
//     {
//       'quote': 'We are shaped and fashioned by what we love.',
//       'author': 'Johann Wolfgang von Goethe'
//     },
//     {
//       'quote': 'Love is not only something you feel, it is something you do.',
//       'author': 'David Wilkerson'
//     },
//     {'quote': 'Where there is love there is life.', 'author': 'Mahatma Gandhi'},
//     {
//       'quote': 'Love does not dominate; it cultivates.',
//       'author': 'Johann Wolfgang von Goethe'
//     }
//   ],
//
// };

// Printing the quotes and authors by category
// quotesMap.forEach((category, quotes) {
//   print('Category: $category');
//   for (var quote in quotes) {
//     print('Quote: ${quote['quote']}');
//     print('Author: ${quote['author']}');
//     print('');
//   }
// });
Map categoriesMap = {};
