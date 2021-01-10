# run the file
from Booking import Booking

OPTIONS = {
            1: 'Show the tickets',
            2: 'Buy a ticket',
            3: 'Statistics',
            4: 'Show booked Tickets User Info',
            0: 'Exit'
}

rows = eval(input('Enter the number of rows: '))
no_of_seats = eval(input('Enter the number of seats in each row: '))

while True:

    for i, option in OPTIONS.items():
        print('%s. %s '%(i, option))

    user_input = eval(input())
    booking = Booking()

    if isinstance(user_input, int):
        if user_input == 1:
            booking.show_tickets(rows,no_of_seats)

        elif user_input == 2:
            booking.buy_ticket()

        elif user_input == 3:
            booking.statistics()

        elif user_input == 4:
            booking.show_booked_tickets()

        elif user_input == 0:
            exit()
        else:
            print('Please enter valid input')
    else:
        print('Please enter valid input')
