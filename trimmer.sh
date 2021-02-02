#!/bin/sh

#   Copyright 2020 InfAI (CC SES)
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.


# Environment variables:
#
# $DEP_INSTANCE
# $JOB_CALLBACK_URL
# $input_csv
# $delimiter
# $columns


out_file_name=$(cat /proc/sys/kernel/random/uuid | echo $(read s; echo ${s//-}))

cd /data_cache

echo "trimming ..."
if cut -d "$delimiter" -f "$columns" "$input_csv" > "$out_file_name"; then
    head -5 "$out_file_name"
    echo "total number of lines written:" $(( $(wc -l < "$out_file_name") - 1 ))
    if ! curl -s -S --header 'Content-Type: application/json' --data "{\""$DEP_INSTANCE"\": {\"output_csv\": \""$out_file_name"\"}}" -X POST "$JOB_CALLBACK_URL"; then
        echo "callback failed"
        rm "$out_file_name"
    fi
else
    echo "trimming failed"
fi
