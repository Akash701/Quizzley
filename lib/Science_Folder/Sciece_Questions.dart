class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Who is the Father of Science.",
    "options": ['Issac Newton', 'Galileo Galilei', 'Aristotle', 'Robert Boyle'],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question": "The Concept of gravity was discoverd by which physicist.",
    "options": [
      'Issac Newton',
      'Marie curie',
      'Galileo Galilei',
      'Albert Einstein'
    ],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "How many bones are in human body",
    "options": ['205', '201', '206', '212'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "Who discoverd Electrons ?",
    "options": ['Robert hooke', 'J.J.thomson', 'James Chadwick', 'Rutherford'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "What is the physical phase of life ?",
    "options": ['Protoplasm', 'Cytoplasm', 'Organelles', 'Ribosomes'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "What is the life span of RBC ?",
    "options": ['120 days', '110 days', '100 days', '180 days'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Which gas is most popular as laughing gas",
    "options": ['Helium', 'Nitrous Oxide', 'Argon', 'Hydrogen'],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question": "Who Consider as the Father of Indian Nuclear",
    "options": [
      'C.V Raman',
      'Homi J bhabha',
      'APJ Abdul Kalam',
      'Vikram Sarabhai'
    ],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "The biggest Volcano in oue Solar System is located in",
    "options": ['Jupiter', 'Venus', 'Mars', 'Saturn'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "What is a U-boat ?",
    "options": ['Ship', 'Submarine', 'Helicopter', 'Balloon'],
    "answer_index": 2,
  },
];
