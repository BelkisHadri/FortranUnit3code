program personal_quiz
    implicit none
    open(unit=10, file="quiz_result.txt", status="unknown")
    integer :: i !score that increases
    integer :: score !total score to than put into the file 
    integer :: userAnswer! the input for the questions
    character(len=30) :: userName   !the user name for than storing it into the file that i make 
    integer::ioStatus !for code not to crash
    redo=1
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
   
   ! The arrays for the questions. I need to declasre these to have them ready for the user
    character(len=120) :: questions(4) ! 4 quetions in totals
    character(len=60)  :: options(3,4) ! a 2-d array because 3 questions and 4 answers for each 
    integer :: correctAnswers(3) ! 3 correct answers for each of the questions 

    ! Questions in my quiz for each part of the array.
    questions(1) = "What is Belkis's favorite subject?"
    questions(2) = "How long has Belkis been in KAUST?"
    questions(3) = "Who is Belkis's favorite sister?"
    questions(4) = "How good is this code?"

    
  !questions 1 answers 
    options(1,1) = "1. Math"
    options(1,2) = "2. Computer Science"
    options(1,3) = "3. English"
    options(1,4) = "4. INS"

!questions 2 answers 
    options(2,1) = "1. 3 years"
    options(2,2) = "2. 11 years"
    options(2,3) = "3. 7 years"
    options(2,4) = "4. 10 years"
 
  !question 3 answers  
    options(3,1) = "She does not have any sisters"
    options(3,2) = "She does not like any of her sisters"
    options(3,3) = "She likes them all equally"
    options(3,4) = "She likes the youngest sister only"
  
    !questions 4 answers 
    options(4,1) = "1. Not very good"
    options(4,2) = "2. A bit boring"
    options(4,3) = "3.Could be better
    options(4,4) = "4. Amazing"

    ! Correct answers
    correctAnswers(1) = 2
    correctAnswers(2) = 2
    correctAnswers(3) = 3
    correctAnswers(4) = 4

     score = 0
    print *, "Enter your name:", read *, userName

    print *, "" !i made space to make the code look better 
    print *, "Welcome to Belkis's quiz dear", (userName) , "Good luck, answer all the questions correctly using only numbers"
 

    do i = 1, 3
!questions eing displayed
    end do

    print *, ""
    print *, "Final score:", score, "/ 3"
  
    write(10,*) "Name:", trim(userName)
    write(10,*) "Final score:", score, "out of 3"
    close(10)

    print *, "Your result has been saved."

end program personal_quiz
