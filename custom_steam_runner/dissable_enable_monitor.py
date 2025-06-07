import subprocess

output = subprocess.check_output("hyprctl monitors", shell=True)
if "DP-2" in str(output):
    subprocess.run("hyprctl keyword monitor DP-2,disable", shell=True)
else:
    subprocess.run("hyprctl reload", shell=True)

    pass
