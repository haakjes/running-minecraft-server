#!/bin/bash

set -exuo pipefail

mkdir -p plugins
cd plugins
rm -f Geyser-Spigot.jar
wget https://ci.opencollab.dev//job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/spigot/target/Geyser-Spigot.jar 

rm -f floodgate-spigot.jar
wget https://ci.opencollab.dev/job/GeyserMC/job/Floodgate/job/master/lastSuccessfulBuild/artifact/spigot/target/floodgate-spigot.jar 

rm -f worldguard-bukkit.jar
wget -O worldguard-bukkit.jar https://dev.bukkit.org/projects/worldguard/files/latest

rm -f worldedit-bukkit.jar
wget -O worldedit-bukkit.jar https://dev.bukkit.org/projects/worldedit/files/latest

# manual downloads / updates:
# https://www.spigotmc.org/resources/%E3%80%90ultimatehomes%E3%80%91-highly-configurable-player-sethome-system-1-8-1-19-x.64210/
# https://www.spigotmc.org/resources/luckperms.28140/
