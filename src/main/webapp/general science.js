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
    question: "Which animal never drinks water in its entire life?  ",
    answer: "Kangaroo rat",
    options: [
      "Kangaroo",
      "Hippopotamus ",
      "Rat",
      "Kangaroo rat"
    ]
  },
    {
    numb: 2,
    question: "What is the physical phase of life called? ",
    answer: "Protoplasm",
    options: [
      "Protoplasm",
      "Cytoplasm",
      "Organelles",
      "None of the above"
    ]
  },
    {
    numb: 3,
    question: "The largest cell is ________________",
    answer: "The egg of an Ostrich",
    options: [
        "Nerve Cell",
        "Ovum",
        "The egg of an Ostrich",
        "None of the above"
    ]
  },
    {
    numb: 4,
    question: "Which is the largest human cell?",
    answer: "",
    options: [
      "Liver",
      "Skin",
      "Spleen",
      "Ovum"
    ]
  },
    {
    numb: 5,
    question: "_________________ is the longest cell.",
    answer:"",
    options: [
      "Nerve Cell",
      "Skin",
      "Spleen",
      "None of the above"
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