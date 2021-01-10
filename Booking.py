from Connections import CONNECTIONS
from pdb import set_trace

class Booking:

    @property
    def connection(self):
        conn = CONNECTIONS()
        return conn

    def show_tickets(self, rows=None, columns=None):
        # set_trace()
        print('Cinema')
        print('  ', end=' ')
        for column in range(columns):
            print(column+1, end=' ')
        for row in range(rows):
            query = 'SELECT row_no,column_no,Availability_status FROM seat_details where row_no={0} limit {1}'.format(row + 1, columns)
            fetched_data = self.connection.fetch_data(query)
            print('\n', row+1, end=' ')
            for column in fetched_data:
                if column[2].lower() == 'vacant':
                    print('S', end=' ')
                else:
                    print('B', end=' ')
        print('\n')

    def get_seat_price(self, row, column):
        query = 'select count(*),max(row_no) from seat_details;'
        count = self.connection.fetch_data(query)
        total_seats, max_row = int(count[0][0]), int(count[0][1])
        if total_seats <= 60:
            return 10
        else:
            if int(row) > round(max_row/2):
                return 10
            else:
                return 8

    def is_seat_available(self, row, column):
        query = 'select * from seat_details where row_no=%s and column_no=%s and Availability_status like "Vacant";'%(row, column)
        fetched_data = self.connection.fetch_data(query)
        if fetched_data:
            return True
        else:
            return False

    def mark_booked(self, *args):
        query = 'update seat_details set Availability_status="Booked",book_no=%s where row_no=%s and column_no=%s'%(args)
        self.connection.execute_query(query)

    def insert_booking_details(self, *args):
        # set_trace()
        query = 'insert into booking_details(name,gender,age,phone_no,ticket_price) values("%s","%s",%s,%s,%s);'%(args)
        self.connection.execute_query(query)
        booking_no = self.connection.fetch_data('select book_no from booking_details order by book_no desc limit 1;')[0][0]
        return booking_no

    def buy_ticket(self):
        row = input('Enter row number: ')
        column = input('Enter column number: ')
        # set_trace()
        if self.is_seat_available(row, column):
            price = self.get_seat_price(row, column)
            print('Seat is available do you want book a ticket on price $%s?'%price)
            resp = input()
            if resp.lower() == 'yes':
                print('======= Enter the details =======')
                name = input('Name: ')
                gender = input('Gender: ')
                age = input('Age: ')
                phone_no = input('Phone No: ')
                book_no = self.insert_booking_details(name, gender, age, phone_no, price)
                # set_trace()
                self.mark_booked(book_no, row, column)
                print('Hey %s! your ticket is booked successfully!!'%name)

        else:
            print('Seat is not available!!')

    def statistics(self):
        query1 = 'select Availability_status,count(*) from seat_details group by Availability_status;'
        booking_status = self.connection.fetch_data(query1)
        seat_status = dict()
        for status in booking_status:
            seat_status.update({status[0]: status[1]})
        booked_seats = seat_status.get('Booked', 0)
        vacant_seats = seat_status.get('Vacant', 0)
        total_seats = int(booked_seats) + int(vacant_seats)
        percent = round(int(booked_seats)/int(total_seats)*100, 2)
        query2 = 'select sum(ticket_price) from booking_details;'
        total_income_data = self.connection.fetch_data(query2)
        current_income = int(total_income_data[0][0])
        if total_seats <= 60:
            total_income = total_seats*10
        else:
            # set_trace()
            query3 = 'select count(*) from seat_details where row_no <=(select round(max(row_no)/2) from seat_details);'
            first_half_seats_data = self.connection.fetch_data(query3)
            first_half_seats = first_half_seats_data[0][0]*8
            query4 = 'select count(*) from seat_details where row_no >(select round(max(row_no)/2) from seat_details);'
            remaining_seats_data = self.connection.fetch_data(query4)
            remaining_seats = remaining_seats_data[0][0]*10
            total_income = first_half_seats + remaining_seats

        print('\nNumber of Purchased Tickets:', booked_seats)
        print(f'Percentage of Tickets booked: {percent}%')
        print('Current Income: $%s'%current_income)
        print('Total Income: $%s'%total_income,'\n')

    def show_booked_tickets(self):
        row_no = input('Enter the row no: ')
        column_no = input('Enter the column no: ')
        # set_trace()
        query = 'select book_no from seat_details where row_no=%s and column_no=%s;'%(row_no,column_no)
        b_no = self.connection.fetch_data(query)
        booking_no = b_no[0][0] if b_no[0] else None

        if booking_no:
            details_list = ['Name', 'Gender', 'Age', 'Ticket Price', 'Phone No']
            query = 'select name,gender,age,ticket_price,phone_no from booking_details where book_no=%s'%booking_no
            booked_user_details = self.connection.fetch_data(query)

            for i, record in enumerate(booked_user_details[0]):
                print('%s: %s'%(details_list[i], record))