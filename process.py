log_file = open("um-server-01.txt")
# when working with text files with data, you always have to link it to Python by opening the file and assigning it to a variable, in this case log_file


def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Tue":
            print(line)
# this is declaring a function that is looping over the data to display all of Tuesday's data log

sales_reports(log_file)
# need to actually call the function in order for it to display the data

def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)
sales_reports(log_file)

#  --EXTRA CREDIT--
# I couldn't figure out how to get the values over 10
word = "Watermelon"
def melon_orders(log_file):
    for line in log_file:
        values = line.split(':')
        for value in values:
           if word in values:
            print(line)