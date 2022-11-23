<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Awesome Quiz App | CodingNepal</title>
    <link rel="stylesheet" href="style.css">
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
<body>
    
    <div class="start_btn"><button>Start Quiz</button></div>

    
    <div class="info_box">
        <div class="info-title"><span>Some Rules of this Quiz</span></div>
        <div class="info-list">
            <div class="info">1. You will have only <span>15 seconds</span> per each question.</div>
            <div class="info">2. Once you select your answer, it can't be undone.</div>
            <div class="info">3. You can't select any option once time goes off.</div>
            <div class="info">4. You can't exit from the Quiz while you're playing.</div>
            <div class="info">5. You'll get points on the basis of your correct answers.</div>
        </div>
        <div class="buttons">
            <button class="quit">Exit Quiz</button>
            <button class="restart">Continue</button>
        </div>
    </div>

   
    <div class="quiz_box">
        <header>
            <div class="title">Oniline Quitz Application</div>
            <div class="timer">
                <div class="time_left_txt">Time Left</div>
                <div class="timer_sec">15</div>
            </div>
            <div class="time_line"></div>
        </header>
        <section>
            <div class="que_text">
              
            </div>
            <div class="option_list">

            </div>
        </section>

        
        <footer>
            <div class="total_que">
               
            </div>
            <button class="next_btn">Next Que</button>
        </footer>
    </div>

    
    <div class="result_box">
        <div class="icon">
            <i class="fas fa-crown"></i>
        </div>
        <div class="complete_text">You've completed the Quiz!</div>
        <div class="score_text">
            
        </div>
        <div class="buttons">
            <button class="restart">Replay Quiz</button>
            <button class="quit">Quit Quiz</button>
        </div>
    </div>

  
    <script>
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
    </script>

  
    <script>
        function setFormMessage(formElement, type, message) {
    const messageElement = formElement.querySelector(".form__message");

    messageElement.textContent = message;
    messageElement.classList.remove("form__message--success", "form__message--error");
    messageElement.classList.add(`form__message--${type}`);
}

function setInputError(inputElement, message) {
    inputElement.classList.add("form__input--error");
    inputElement.parentElement.querySelector(".form__input-error-message").textContent = message;
}

function clearInputError(inputElement) {
    inputElement.classList.remove("form__input--error");
    inputElement.parentElement.querySelector(".form__input-error-message").textContent = "";
}

document.addEventListener("DOMContentLoaded", () => {
    const loginForm = document.querySelector("#login");
    const createAccountForm = document.querySelector("#createAccount");

    document.querySelector("#linkCreateAccount").addEventListener("click", e => {
        e.preventDefault();
        loginForm.classList.add("form--hidden");
        createAccountForm.classList.remove("form--hidden");
    });

    document.querySelector("#linkLogin").addEventListener("click", e => {
        e.preventDefault();
        loginForm.classList.remove("form--hidden");
        createAccountForm.classList.add("form--hidden");
    });

    loginForm.addEventListener("submit", e => {
        e.preventDefault();

        // Perform your AJAX/Fetch login

        setFormMessage(loginForm, "error", "Invalid username/password combination");
    });

    document.querySelectorAll(".form__input").forEach(inputElement => {
        inputElement.addEventListener("blur", e => {
            if (e.target.id === "signupUsername" && e.target.value.length > 0 && e.target.value.length < 10) {
                setInputError(inputElement, "Username must be at least 10 characters in length");
            }
        });

        inputElement.addEventListener("input", e => {
            clearInputError(inputElement);
        });
    });
}); 
    </script>

</body>
</html>