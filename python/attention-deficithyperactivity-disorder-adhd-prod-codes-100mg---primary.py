# Adrian J Hire, Darren M Ashcroft, David A Springate, Douglas T Steinke, 2024.

import sys, csv, re

codes = [{"code":"47481","system":"readv2"},{"code":"55495","system":"readv2"},{"code":"576","system":"readv2"},{"code":"55635","system":"readv2"},{"code":"37237","system":"readv2"},{"code":"52461","system":"readv2"},{"code":"13212","system":"readv2"},{"code":"14346","system":"readv2"},{"code":"14119","system":"readv2"},{"code":"59365","system":"readv2"},{"code":"54804","system":"readv2"},{"code":"58691","system":"readv2"},{"code":"2679","system":"readv2"},{"code":"7100","system":"readv2"},{"code":"36628","system":"readv2"},{"code":"47099","system":"readv2"},{"code":"49392","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('attention-deficithyperactivity-disorder-prod-codes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["attention-deficithyperactivity-disorder-adhd-prod-codes-100mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["attention-deficithyperactivity-disorder-adhd-prod-codes-100mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["attention-deficithyperactivity-disorder-adhd-prod-codes-100mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
