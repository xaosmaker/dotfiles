import sys
from sys import argv


def main():
    original_run_command = "Exec=/usr/bin/steam %U"
    custom_run_command = "Exec=/home/xaos/.config/custom_steam_runner/steam_run.sh\n"
    path = "/usr/lib/steam/steam.desktop"
    if len(argv) > 1 and argv[1] == "repair":
        fix_steam_runner(path, original_run_command, custom_run_command)
    else:
        check_steam_desktop_runer(path, custom_run_command)


def check_steam_desktop_runer(path, custom_command):
    """
    original found and custom found
    the first

    """
    with open(path, "r") as fl:
        for line in fl.readline():
            if custom_command in line:
                print("custom_command")
                break
        else:
            print("exit")
            sys.exit(1)


def fix_steam_runner(path, original_command, custom_command):

    with open(path, "r+") as fl:
        file = fl.readlines()
    for index, line in enumerate(file):
        if original_command in line:
            break
    else:
        raise Exception("Something Go wrong")

    poped_line = file.pop(index)
    new_line = f"#{poped_line}"
    file.insert(index, new_line)
    file.insert(index, custom_command)
    with open(path, "r+") as fl:
        fl.writelines(file)


main()
