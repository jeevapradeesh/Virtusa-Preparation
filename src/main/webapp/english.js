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
    question: "Bolt from the blue",
    answer: "A complete surprise",
    options: [
      "A complete surprise",
      "Thundering",
      "Inform something bad",
      "No idea"
    ]
  },
    {
    numb: 2,
    question: "Blue blood",
    answer: "Member of high class society",
    options: [
      "Belonging to low class society",
      "Give complain in written",
      "Member of high class society",
      "Complain give verbally"
    ]
  },
    {
    numb: 3,
    question: "When the Principal entered the class, a student………. on the blackboard.",
    answer: "was writing ",
    options: [
      "Wrote ",
      "was writing ",
      "writes ",
      "writes "
    ]
  },
    {
    numb: 4,
    question: "She………TV when her husband came.",
    answer: "watched",
    options: [
      "watch",
      "is watching",
      "watched",
      "was watching"
    ]
  },
    {
    numb: 5,
    question: "In each of the following questions, find the correctly spelt word.",
    answer: "Renaissance",
    options: [
      "Reannaisance",
      "Renaissance",
      "Rennaissance",
      "Renaisance"
    ]
  },
  {
    numb: 6,
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
    numb: 7,
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
    numb: 8,
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
    numb: 9,
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
    numb: 10,
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