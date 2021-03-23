class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List Science_data = [
  {
    "id": 1,
    "question": "Who is the Father of Science.",
    "options": ['Issac Newton', 'Galileo Galilei', 'Aristotle', 'Robert Boyle'],
    "answer_index": 1,
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
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "How many bones are in human body",
    "options": ['205', '201', '206', '212'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Who discoverd Electrons ?",
    "options": ['Robert hooke', 'J.J.thomson', 'James Chadwick', 'Rutherford'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question": "What is the physical phase of life ?",
    "options": ['Protoplasm', 'Cytoplasm', 'Organelles', 'Ribosomes'],
    "answer_index": 0,
  },
  {
    "id": 6,
    "question": "What is the life span of RBC ?",
    "options": ['120 days', '110 days', '100 days', '180 days'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "Which gas is most popular as laughing gas",
    "options": ['Helium', 'Nitrous Oxide', 'Argon', 'Hydrogen'],
    "answer_index": 1,
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
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "The biggest Volcano in oue Solar System is located in",
    "options": ['Jupiter', 'Venus', 'Mars', 'Saturn'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "What is a U-boat ?",
    "options": ['Ship', 'Submarine', 'Helicopter', 'Balloon'],
    "answer_index": 1,
  },
];

const List Maths_data = [
  {
    "id": 1,
    "question": "Who is the Father of Mathematics.",
    "options": ['Aristotle', 'Archimedes', 'Brahmagupta', 'Charles babage'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Who is the Father of Indian Mathematics ?",
    "options": ['Brahmagupta', 'Chanakya', 'Aristotle', 'Srinivasa Ramanujan'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "Which Country Invented Maths",
    "options": ['India', ' Greece', 'Egypt', 'Iraq'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Who is the Mother of Maths ?",
    "options": ['Hypatia', 'Emmy Noether', 'Mary cartwright', 'Ada Lovelace'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "which country invented zero ?",
    "options": ['India', 'Egyptian', 'Greece', 'Israel'],
    "answer_index": 0,
  },
  {
    "id": 6,
    "question": "Who is the god of Mathematics ?",
    "options": ['Athena', 'Aphrodite', 'Venus', 'Suize'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "m²-1 is divisible by 8, if m is  ?",
    "options": [
      'An even integer',
      'An odd integer',
      'A natural number',
      'A whole number'
    ],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "Who is known as the King of Mathematics in India ?",
    "options": ['AryaBhatta', 'Bhaskaracharya', 'Charaka', 'Brahmagupta'],
    "answer_index": 3,
  },
  {
    "id": 9,
    "question": "The ratio between the LCM and HCF of 5,15,20 is ?",
    "options": ['9:1', '4:3', '11:1', '12:1'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "Who is known as the Father of Arithmetic ?",
    "options": ['Carl Friedrich Gauss', 'Aristotle', 'Brahmagupta', 'Euclid'],
    "answer_index": 2,
  },
];

const List World_data = [
  {
    "id": 1,
    "question": "Largest ocean in the World.",
    "options": [
      'Pacific ocean',
      'Arctic ocean',
      'Indian ocean',
      'Atlantic ocean'
    ],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Which Country is called 'The Land of the midnight sun' ?",
    "options": ['Norway', 'Green land', 'Iceland', 'Ireland'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "Which Country is called 'The Land of the Rising sun' ?",
    "options": ['Japan', 'Norway', 'Ireland', 'Iceland'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "Which Country is called 'The Land of thousand lake' ??",
    "options": ['Iceland', 'Norway', 'Switzerland', 'Finland'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "Which Continent has height number of Countries ?",
    "options": ['Asia', 'Africa', 'Australia', 'Europe'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "Which one is the smallest ocean in the World? ?",
    "options": ['Indian', 'Pacific', ' Atlantic', 'Arctic'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "In which ocean ‘Bermuda Triangle’ region is located ?",
    "options": ['Pacific', 'Arctic', 'Indian', 'Atlantic'],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": " Which country is known as the ‘playground of Europe’?",
    "options": ['Austria', 'Holland', 'Switzerland', 'Italy'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "In which country, white elephant is found?",
    "options": ['India', 'Sri Lanka', 'Thailand', 'Malaysia'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "Total number of oceans in the World is ?",
    "options": ['3', '5', '7', '12'],
    "answer_index": 1,
  },
];

const List Language_data = [
  {
    "id": 1,
    "question": "What is the Science of Language ?",
    "options": ['Logistics', 'Linguistics', 'Statistics', 'Probabilistic'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Oldest language in the world ?",
    "options": ['English', 'Sanskrit', 'Italian', 'Tamil'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "Which is the oldest Computer language",
    "options": ['Python', 'Java', 'Fortran', 'C++'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Which language is known as the 'Mother of all languages",
    "options": ['English', 'Hindi', 'Tamil', 'Sanskrit'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "Which is considered as the Hardest language ",
    "options": ['Korean', 'Japanese', 'Mandarian Chinese', 'Arabic'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "Which is the youngest language in the world ?",
    "options": ['Lingala', 'Gooniyandi ', 'Afrikaans', 'Ido'],
    "answer_index": 2,
  },
  {
    "id": 7,
    "question": "First written language in the world?",
    "options": ['Latin', 'Turkish', 'Sumerian', 'Pali'],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question": "Most using language in the world ?",
    "options": ['English', 'Spanish', 'French', 'Hindi'],
    "answer_index": 0,
  },
  {
    "id": 9,
    "question": "Least Spoken language in the world",
    "options": ['Dumi', 'Kaixana', 'Latin', 'Liki'],
    "answer_index": 0,
  },
  {
    "id": 10,
    "question": "Most uncommon language in the world",
    "options": ['Liki', 'Njerap', 'Kaixana', 'Dumi'],
    "answer_index": 2,
  },
];
