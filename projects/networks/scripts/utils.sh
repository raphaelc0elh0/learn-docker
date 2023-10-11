folder_dir="$(dirname -- "$(realpath -- "$0")")"
path_arr=(${folder_dir//\// })
folder_name="${path_arr[`expr ${#path_arr[@]} - 2`]}"