# Imports
import os
from os import path

sourceworker=input("\n Do you work with the source or just build? : ")
if sourceworker=="build":
    print("Hold Tight while we sync our sources")
    os.system("repo init --depth=1 -u https://github.com/Project-LegionOS/manifest.git -b 11")
    os.system("repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)")
else:
    print("Cleaning up the source a bit for you....")
    os.system("rm -rf frameworks/base packages/apps/Settings packages/apps/LegionSettings vendor/legion")
    print("Cleanups done xd...")
    print("Now syncing the source for you..")
    os.system("repo init --depth=1 -u https://github.com/Project-LegionOS/manifest.git -b 11")
    os.system("repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)")

# OTA
def ota():
    print ("\nMoving to OTA repository\n")
    os.chdir("OTA")
    print("\nUnshallowing the repository\n")
    os.system("git fetch LegionOS-Devices --unshallow")
    os.system("git checkout 11")
    os.system("git pull LegionOS-Devices 11")
    print ("")
    print ("Device directory exists : " + str(path.exists(codename)))
    result=path.exists(codename)
    if result==False:
        print("\nCreating the device folder... xd\n")
        os.system("mkdir %s"%codename)
        os.chdir("%s"%codename)
        os.system("mkdir official")
        print("\nFolder created succesfully... xd\n")
        print("\nCreating the necessary files... xd\n")
        os.mknod("changelogs_gapps.txt")
        os.mknod("changelogs_vanilla.txt")
        os.chdir("official")
        os.mknod("gapps.json")
        os.mknod("vanilla.json")
        os.chdir("..")
        os.chdir("..")
        os.chdir("..")
        print("\nCreating the necessary files completed succesfully... xd\n")
        print("\nHey new maintainer!!! welcome to the Project LegionOS hope you have a great time here\n")
        print("\nContinuing the script....xd\n")
        os.system("bash ota.sh %s %s"%(codename,variant))
        print ("")
    else:
        os.chdir("..")
        print("\nContinuing the script....xd\n")
        os.system("bash ota.sh %s %s"%(codename,variant))
        print ("")

# Banner
print ("")
print ("-----------------------------------------------")
print ("")
print("""
╭━━━╮╱╱╱╱╱╱╱╱╱╱╱╭╮╱╱╭╮╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╭━━━┳━━━╮
┃╭━╮┃╱╱╱╱╭╮╱╱╱╱╭╯╰╮╱┃┃╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱┃╭━╮┃╭━╮┃
┃╰━╯┣━┳━━╋╋━━┳━┻╮╭╯╱┃┃╱╱╭━━┳━━┳┳━━┳━╮┃┃╱┃┃╰━━╮
┃╭━━┫╭┫╭╮┣┫┃━┫╭━┫┣━━┫┃╱╭┫┃━┫╭╮┣┫╭╮┃╭╮┫┃╱┃┣━━╮┃
┃┃╱╱┃┃┃╰╯┃┃┃━┫╰━┫╰┳━┫╰━╯┃┃━┫╰╯┃┃╰╯┃┃┃┃╰━╯┃╰━╯┃
╰╯╱╱╰╯╰━━┫┣━━┻━━┻━╯╱╰━━━┻━━┻━╮┣┻━━┻╯╰┻━━━┻━━━╯
╱╱╱╱╱╱╱╱╭╯┃╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╭━╯┃╱╱╱╱╱╱╱╱╱╱╱╱╱╱
╱╱╱╱╱╱╱╱╰━╯╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╰━━╯╱╱╱╱╱╱╱╱╱╱╱╱╱╱""")
print ("")
print ("-----------------------------------------------")
print ("")
print ("ONLY FOR OFFICIAL BUILDS/USE")
print ("")
print ("")
print ("")

# Variables
codename=input("\nEnter your device code name :- eg miatoll/laurel_sprout : ")
sfun=input("\nEnter your sourceforge username :-  ")
variant=input("\nPlease type 'gapps' to confirm the build type to be built :")

# Variant & Building & OTA
os.system("bash build.sh %s true"%(codename,))
os.system("rsync --progress -e ssh out/target/product/%s/LegionOS*.zip %s@frs.sourceforge.net:/home/frs/project/legionrom/%s/"%(codename,sfun,codename))
ota()
variant=input("\nPlease type 'vanilla' to confirm the build type to be built :")
os.system("bash build.sh %s false"%(codename,))
os.system("rsync --progress -e ssh out/target/product/%s/LegionOS*.zip %s@frs.sourceforge.net:/home/frs/project/legionrom/%s/"%(codename,sfun,codename))
ota()

# Telegram notification
print("\nPosting in Telegram....\n")
os.system("bash tg.sh")
print("\nPosted in Telegram\n")
print("\nExiting...\n")
print("\nBye have a great day\n")
