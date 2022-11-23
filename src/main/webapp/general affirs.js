let serial = [
  {
      numb: 1
  },
  {
      numb: 2
  },
  {
      numb: 3
  },
  {
      numb: 4
  },
  {
      numb: 5
  },
  {
      numb: 6
  },
  {
      numb: 7
  },
  {
      numb: 8
  },
  {
      numb: 9
  },
  {
      numb: 10
  }
  
  ]
let questions = [
    {
    numb: 1,
    question: "Which country has exported apples to India, for the first time on 50 years?",
    answer: "UK",
    options: [
      "China",
      "Israel",
      "Australia",
      "UK"
    ]
  },
    {
    numb: 2,
    question: "Where is the National Forensic Science University located in India?",
    answer: "Ahmedabad",
    options: [
      "Ahmedabad",
      "Mumbai",
      "Chennai",
      "Mysuru"
    ]
  },
    {
    numb: 3,
    question: "India adopted 2030 Roadmap and held its inaugural meeting of Financial Markets Dialogue with which country?",
    answer: "UK",
    options: [
        "China",
        "Israel",
        "Australia",
        "UK"
    ]
  },
    {
    numb: 4,
    question: "Which institution released the report titled “The Hunger Virus Multiplies”?",
    answer: "Orfam",
    options: [
      "UNICEF",
      "World Bank",
      "Orfam",
      "UNESCO"
    ]
  },
    {
    numb: 5,
    question: "With reference to Covid, what is ‘SwabSeq’, that was making news recently?",
    answer:"Testing Platform",
    options: [
      "Vaccine Candidate",
      "Testing Platform",
      "Oral Medicine",
      "Global Alliance Show"
    ]
  },


];
function shuffle(array) {
  array.sort(() => Math.random() - 0.5);
}

let newques = shuffle(questions)
window.onbeforeunload = function() { 
  
  window.setTimeout(function () { 
      window.location = 'login.jsp';
  }, 0); 
  window.onbeforeunload = null; // necessary to prevent infinite loop, that kills your browser 
  return 'Are you really want to perform the action?';
}