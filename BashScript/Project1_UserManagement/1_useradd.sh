#!/bin/bash
# This Script For Create And Delete User

# 3- function for (create or delete)
checkUser(){
if [ "$1" = "b" ]
    then
    return 1;
elif [  "$1" = 'q' ]
    then
    exit

elif  [  -z "$1" ]
    then
    clear;
    echo "User Name Cant Empty!"
    return 2 
fi
}

createUser(){
while true
do
    echo "Enter User Name (b - Back | q- Quiet ) ";
    read userName;
    checkUser "$userName"
    status=$?
    if [ $status -eq 1 ];then 
        break;
    elif [ $status -eq 2 ] ;then
        continue;

    else
        grep -w "^$userName" /etc/passwd > /dev/null
        if [ $? -ne 0 ]
        then 
            echo "Enter Password "
            read -s password
            encryptPassword=$(echo "$password" | openssl passwd -1 -stdin )
            sudo useradd -md "/home/$userName"  -p "$encryptPassword" "$userName"
            clear;
            echo -e "\n User Name $userName Created Success\n"

        else
            clear;
            echo -e "\n User Name $userName Already Exists!\n"
        fi
    fi
done
}

deleteUser(){
while true
do
    echo "Enter User Name You Want Delete (b - Back | q- Quiet ) ";
    read userName;
    checkUser "$userName"
    status=$?
    if [ $status -eq 1 ];then 
        break;
    elif [ $status -eq 2 ] ;then
        continue;
    else
        grep -w "^$userName" /etc/passwd > /dev/null
        if [  $? -eq 0 ];then
            sudo userdel -r $userName 2> /dev/null;
            echo "User Deleted Successfully"
        else
            clear;
            echo -e "\nUser $userName Dont Exist \n"
            continue;
        fi
    fi

done
}

# 1- What do you wnat to do? (create - delete (char) c - d)
# 2- Enter Username (check already exists or not) 
while true
do
    echo "What do you want to do?"
    echo "c) Create User"
    echo "d) Delete User" 
    echo "q) Quiet Script" 
    read operation;

    if [ "$operation" = 'c' ]
    then
        createUser;


    elif [ "$operation" = 'd' ]
    then
        deleteUser;

    elif [ "$operation" = 'q' ]
    then
        exit;

    else
        clear;
        echo "Enter Valid Operation" 
    fi

done

# 4- end program 
