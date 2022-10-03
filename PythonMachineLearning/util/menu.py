import datetime

from PythonMachineLearning.util.configuration import Configuration


apply_defaults_options = {
    1: 'yes',
    2: 'no',
}

start_date_options = {
    1: '2017-08-01',
    2: '2018-08-01',
    3: '2019-08-01 (default)',
    4: '2020-08-01',
    5: 'custom value',
}

end_date_options = {
    1: '2017-08-05',
    2: '2018-08-05',
    3: '2019-08-05',
    4: '2020-08-05 (default)',
    5: 'custom value',
}

epochs_options = {
    1: '20',
    2: '40',
    3: '60',
    4: '70 (default)',
    5: '100',
    6: '150',
    7: 'custom value',
}

batch_size_options = {
    1: '16',
    2: '32 (default)',
    3: '64',
    4: '128',
    5: 'custom value',
}


def print_menu_options(options):
    for key in options.keys():
        print(key, ': ', options[key])


def get_config_from_menu():
    # init with default values
    start_date = datetime.datetime(2019, 8, 1).date()
    end_date = datetime.datetime(2020, 8, 5).date()
    epochs = 70
    batch_size = 32
    cut_dataframe_input = "x"

    print("##############################################")
    print("#              Settings Menu                 #")
    print("##############################################\n")

    print("Apply Defaults?")
    print_menu_options(apply_defaults_options)
    apply_defaults_selection = 0
    while apply_defaults_selection == 0:
        try:
            apply_defaults_selection = int(input("\nselection: "))
        except ValueError:
            print("\n please enter integer values")
            continue
        if apply_defaults_selection == 1:
            apply_defaults_selection = 1
        elif apply_defaults_selection == 2:
            apply_defaults_selection = 2
        else:
            print("\ninvalid selection")
            apply_defaults_selection = 0

    if apply_defaults_selection == 2:  # go through the menu
        print("Choose a start date for the learning")
        print_menu_options(start_date_options)

        start_date_selection = 0
        start_date = datetime.datetime(2019, 8, 1).date()
        while start_date_selection == 0:
            try:
                start_date_selection = int(input("\nselection: "))
            except ValueError:
                print("\n please enter integer values")
                continue
            if start_date_selection == 1:
                start_date = datetime.datetime(2017, 8, 1).date()
            elif start_date_selection == 2:
                start_date = datetime.datetime(2018, 8, 1).date()
            elif start_date_selection == 3:
                start_date = datetime.datetime(2019, 8, 1).date()
            elif start_date_selection == 4:
                start_date = datetime.datetime(2020, 8, 1).date()
            elif start_date_selection == 5:
                try:
                    year = int(input("\nyear (2017 - 2020): "))
                    month = int(input("\nmonth (1 - 12): "))
                    day = int(input("\nday (1 - [28,29,30,31]): "))
                except ValueError:
                    print("\n please enter integer values")
                    continue

                start_date = datetime.datetime(year, month, day).date()
            else:
                print("\ninvalid selection")
                start_date_selection = 0

        print("Choose an end date for the learning")
        print_menu_options(end_date_options)
        end_date_selection = 0
        end_date = datetime.datetime(2020, 8, 1).date()

        while end_date_selection == 0:
            try:
                end_date_selection = int(input("\nselection: "))
            except ValueError:
                print("\n please enter integer values")
                continue

            if end_date_selection == 1:
                end_date = datetime.datetime(2017, 8, 5).date()
            elif end_date_selection == 2:
                end_date = datetime.datetime(2018, 8, 5).date()
            elif end_date_selection == 3:
                end_date = datetime.datetime(2019, 8, 5).date()
            elif end_date_selection == 4:
                end_date = datetime.datetime(2020, 8, 5).date()
            elif end_date_selection == 5:
                try:
                    year = int(input("\nyear (2017 - 2020): "))
                    month = int(input("\nmonth (1 - 12): "))
                    day = int(input("\nday (1 - [28,29,30,31]): "))
                except ValueError:
                    print("\n please enter integer values")
                    continue
                end_date = datetime.datetime(year, month, day).date()
            else:
                print("\ninvalid selection")
                end_date_selection = 0
            if end_date < start_date:
                print("\n endDate must be after startDate")
                end_date_selection = 0

        print("Choose the number of epochs")
        print_menu_options(epochs_options)
        epochs_selection = 0
        epochs = 70

        while epochs_selection == 0:
            try:
                epochs_selection = int(input("\nselection: "))
            except ValueError:
                print("\n please enter integer values")
                continue

            if epochs_selection == 1:
                epochs = 20
            elif epochs_selection == 2:
                epochs = 40
            elif epochs_selection == 3:
                epochs = 60
            elif epochs_selection == 4:
                epochs = 70
            elif epochs_selection == 5:
                epochs = 100
            elif epochs_selection == 6:
                epochs = 150
            elif epochs_selection == 7:
                try:
                    epochs = int(input("epochs (1 - 500): "))
                except ValueError:
                    print("\n please enter integer values")
                    continue

                if epochs < 1 or epochs > 500:
                    print("\ninvalid range for epoch. Allowed is (1 - 500)")
                    epochs_selection = 0
            else:
                print("\ninvalid selection")
                epochs_selection = 0

        print("Choose a batch size")
        print_menu_options(batch_size_options)
        batch_size_selection = 0
        batch_size = 32

        while batch_size_selection == 0:
            try:
                batch_size_selection = int(input("\nselection: "))
            except ValueError:
                print("\n please enter integer values")
                continue

            if batch_size_selection == 1:
                batch_size = 16
            elif batch_size_selection == 2:
                batch_size = 32
            elif batch_size_selection == 3:
                batch_size = 64
            elif batch_size_selection == 4:
                batch_size = 128
            elif batch_size_selection == 5:
                try:
                    batch_size = int(input("epochs (1 - 500): "))
                except ValueError:
                    print("\n please enter integer values")
                    continue

                if batch_size < 1 or batch_size > 500:
                    print("\ninvalid range for batchsize. Allowed is (1 - 500)")
                    batch_size_selection = 0
            else:
                print("\ninvalid selection")
                batch_size_selection = 0

        print("Do you want to cut out a specific timerange from the dataframe?")

        while(cut_dataframe_input == "x"):
            cut_dataframe_input = input("selection: (y/n): ")
            if(cut_dataframe_input != "y" and cut_dataframe_input != "n"):
                print("\nplease enter y or n")

        if(cut_dataframe_input == "y"):
            from_hour_input = -1
            from_quarter_hour_input = -1
            to_hour_input = -1
            to_quarter_hour_input = -1

            while(from_hour_input == -1):
                try:
                    from_hour_input = int(input("from hour (0-23): "))
                except ValueError:
                    print("\n please enter integer values")
                    continue
                if(from_hour_input < 0 or from_hour_input > 23):
                    print("\ninvalid range for from_hour_input. Allowed is (1 - 500)")
                    continue

            while (from_quarter_hour_input == -1):
                try:
                    from_quarter_hour_input = int(input("from quarter hour (0-3): "))
                except ValueError:
                    print("\n please enter integer values")
                    continue
                if (from_quarter_hour_input < 0 or from_quarter_hour_input > 3):
                    print("\ninvalid range for from_quarter_hour_input. Allowed is (0 - 3)")
                    continue

            while (to_hour_input == -1):
                try:
                    to_hour_input = int(input("to hour (0-23): "))
                except ValueError:
                    print("\n please enter integer values")
                    continue
                if (to_hour_input < 0 or to_hour_input > 23):
                    print("\ninvalid range for to_hour_input. Allowed is (1 - 500)")
                    continue

            while (to_quarter_hour_input == -1):
                try:
                    to_quarter_hour_input = int(input("to quarter hour (0-3): "))
                except ValueError:
                    print("\n please enter integer values")
                    continue
                if (to_quarter_hour_input < 0 or to_quarter_hour_input > 3):
                    print("\ninvalid range for to_quarter_hour_input. Allowed is (0 - 3)")
                    continue

        folder_name = "";
        while(folder_name == ""):
            folder_name = input("foldername: ")
            if(folder_name == ""):
                print("please enter a foldername")






    print()
    print("OK config is:")
    print("Start date: " + str(start_date))
    print("End date: " + str(end_date))
    print("Number of epochs: " + str(epochs))
    print("Batch size: " + str(batch_size))
    config = Configuration(start_date, end_date, epochs, batch_size, folder_name, "x")


    if(cut_dataframe_input == "y"):
        print("cuts in the dataframe: ")
        print("from_hour: " + str(from_hour_input))
        print("from_quarter_hour: " + str(from_quarter_hour_input))
        print("to_hour: " + str(to_hour_input))
        print("to_quarter_hour: " + str(to_quarter_hour_input))
        config = Configuration(start_date, end_date, epochs, batch_size,
                               from_hour_input, from_quarter_hour_input, to_hour_input, to_quarter_hour_input)

    return config
