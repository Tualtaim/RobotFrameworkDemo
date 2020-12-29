"""A library used for opening and reading csv-files"""

import csv


def read_csv_file(filepath):
    data = []
    with open(filepath, 'r') as datafile:
        reader = csv.reader(datafile)
        for line in reader:
            data.append(line)
    return data
