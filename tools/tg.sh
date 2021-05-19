#!/usr/bin/env bash
# Author: kNIGHT

TOKEN="1862128467:AAG7RZ-zs7ivFa4BgGsgPv6BOS4kFuYSTgw"
CHATID="-1001208308421"
PHOTO="banner.jpg"
read -r -p $'\n\e[36mEnter device name : \e[0m' device
read -r -p $'\n\e[36mEnter LegionOS Version : \e[0m' legv
read -r -p $'\n\e[36mEnter device codename : \e[0m' codename
read -r -p $'\n\e[36mEnter security patch date : (May 2021) : \e[0m' patch_date
read -r -p $'\n\e[36mEnter your username:(without@) : \e[0m' username
	curl -X POST -F photo=@"${PHOTO}" https://api.telegram.org/bot"${TOKEN}"/sendPhoto -F chat_id="${CHATID}" -F parse_mode=Markdown -F "caption=*LegionOS ${legv}* | *${device}* | *${codename}* 
	
	▪️ *Build date* : $(date +%Y-%m-%d)
	▪️ *Security Patch* : ${patch_date}
	▪️ *Android Version* : 11
	▪️ *Download* : [HERE](https://legionos.org)
	(Builds may take upto 30mins to show up.... until then it will show error in OTA and site...please bare with us)

	▪️ *By*: @${username}
	▪️ *Support* : [ROM](https://t.me/legionos)
	
	#LegionOS #${device} #${codename}"
