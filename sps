import random
def get_user_choice():
    
    while True:
        user_choice = input("Enter 'rock', 'paper', or 'scissors': ").lower()
        if user_choice in ['rock', 'paper', 'scissors']:
            return user_choice
        else:
            print("Invalid input. Please enter 'rock', 'paper', or 'scissors'.")

def get_computer_choice():
    
    return random.choice(['rock', 'paper', 'scissors'])

def determine_winner(user_choice, computer_choice):
    
    if user_choice == computer_choice:
        return 'tie'
    elif (user_choice == 'rock' and computer_choice == 'scissors') or \
         (user_choice == 'scissors' and computer_choice == 'paper') or \
         (user_choice == 'paper' and computer_choice == 'rock'):
        return 'win'
    else:
        return 'lose'

def play_game():
    user_score = 0
    computer_score = 0

    while True:
        print("\nROCK, PAPER, SCISSORS GAME")
        print("Enter 'quit' to end the game.")
        print("Current Score - User: {}, Computer: {}".format(user_score, computer_score))

        user_choice = get_user_choice()
        if user_choice == 'quit':
            break

        computer_choice = get_computer_choice()

        print("\nUser choice: ", user_choice)
        print("Computer choice: ", computer_choice)

        result = determine_winner(user_choice, computer_choice)

        if result == 'win':
            user_score += 1
            print("You win!")
        elif result == 'lose':
            computer_score += 1
            print("You lose!")
        else:
            print("It's a tie!")

    print("\nFinal Score - User: {}, Computer: {}".format(user_score, computer_score))
    print("Thanks for playing!")


play_game()
