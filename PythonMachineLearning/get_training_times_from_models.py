import os


def get_info(folder):
    sub_folders = [name for name in os.listdir(folder) if os.path.isdir(os.path.join(folder, name))]
    sub_folders.sort()
    print(sub_folders)

    last_sub_folder_name = "xxxxxxxxxxxxxxx"
    total_overall_time = 0
    total_time_per_model = 0
    count = 0

    for sub_folder in sub_folders:
        if last_sub_folder_name[0:15] != sub_folder[0:15]:
            print(last_sub_folder_name + " avg time: " + str((round(total_time_per_model, 2) / 5)))
            total_time_per_model = 0

        with open(folder + '/' + sub_folder + '/config.txt', "r") as fi:
            for ln in fi:
                if ln.startswith("Training duration: "):
                    total_time_per_model += int(float(ln[len("Training duration: "):]))
                    total_overall_time += int(float(ln[len("Training duration: "):]))

        last_sub_folder_name = sub_folder
        count += 1

    print(last_sub_folder_name + " avg time: " + str(total_time_per_model / 5))
    print("average time: " + str(total_overall_time/count))


if __name__ == '__main__':
    folder_name = input("subfolder name: ")  # lstm, lstm-solar, gru or gru-solar
    while (folder_name != 'lstm' and folder_name != 'lstm-solar' and folder_name != 'gru' and folder_name != 'gru-solar'):
        print("Please enter 'lstm', 'lstm-solar', 'gru', or 'gru-solar' as subfoldername")
        folder_name = input("subfolder name: ")  # lstm, lstm-solar, gru or gru-solar

    get_info('../webserver/server/public/' + folder_name)
