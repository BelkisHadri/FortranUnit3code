program personal_quiz
    implicit none

    integer :: i
    integer :: score
    integer :: userAnswer
    character(len=30) :: userName    ! NEW: user name
!Modified/Taken from: <Author or GenAI tool name>
!Based on what I have for now of my questions, I want you to only give me the part that changes the color of my question variables. I want green for the right answer, red for the wrong answer and a color of your choice for the questions>
!Date accessed/generated: <date>
!Availability: <https://chatgpt.com/>
!""
 ! Color codes
    character(len=*), parameter :: BLUE  = achar(27)//"[34m"
    character(len=*), parameter :: GREEN = achar(27)//"[32m"
    character(len=*), parameter :: RED   = achar(27)//"[31m"
    character(len=*), parameter :: RESET = achar(27)//"[0m"

!'''end of citation'''

   
   ! The arrays for the questions
    character(len=120) :: questions(3) ! 3 quetions in totals
    character(len=60)  :: options(3,4) ! a 2-d array because 3 questions and 4 answers for each 
    integer :: correctAnswers(3) ! 3 correct answers for each of the questions 

    ! Questions in my quiz for each part of the array.
    questions(1) = "What is Belkis's favorite subject?"
    questions(2) = "How long has Belkis been in KAUST?"
    questions(3) = "How good is this code?"
