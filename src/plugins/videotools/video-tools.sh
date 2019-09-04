Libraries/Commands/youtube-dl.sh
 find ~/Downloads/Videos '*.mp4' -type f -print0 | xargs -0 -I 'VID' ffprobe VID
 find ~/Downloads -iname '*.mp4' -type f -print0 | xargs -0 -I 'VID' ffprobe -pretty -show_format -hide_banner -print_format json -i VID
 find ~/Downloads/Videos/ -iname '*.mp4' -type f -print0 | xargs -0 -I 'VID' ffprobe -pretty -hide_banner -print_format json -i VID
 find ~/Downloads/Videos/ -iname '*.mp4' -type f -print0 | xargs -0 -I 'VID' ffprobe -hide_banner -show_format -show_streams -select_streams v -show_entries 'stream=width,height,duration,bit_rate,profile : format=filename,size,bit_rate' -print_format 'json' -i VID
 find ~/Downloads/Videos/ -iname '*.mp4' -type f -print0 | xargs -0 -I 'VID' ffprobe -hide_banner -show_format -show_streams -select_streams v -show_entries 'stream=width,height,duration,bit_rate,profile : format=filename,size,bit_rate' -print_format 'json' -i VID
     #local info=$(ffprobe -hide_banner -show_format -show_streams -select_streams v -show_entries 'stream=width,height,duration,bit_rate,profile : format=filename,size,bit_rate' -print_format 'json' -i $src);
 find ~/Downloads/Videos/ -iname '*.mp4' -type f -print0 | xargs -0 -I 'VID' ffprobe -pretty -hide_banner -show_entries 'packet=pts_time,duration_time,stream_index : stream=index,codec_type' -i VID
 find ~/Downloads/Videos/ -iname '*.mp4' -type f -print0 | xargs -0 -I 'VID' ffprobe -sections  -i VID 



ffprobe -show_format
-show_streams -show_packets

find . -iname '*.mkv' -print0 | xargs -0 -I 'VID' \
    ffprobe -loglevel error -select_streams s -show_entries stream=index:stream_tags=language -of csv=p=0 -i VID

-show_entries 'stream=index:stream_tags=language'

ffprobe -pretty -hide_banner -print_format 'json' -loglevel 'verbose' -show_format -show_streams -select_streams 's' -show_entries 'stream=index:stream_tags=language' -of csv=p=0 -i "./[CBM]_Code_Geass_-_01_-_The_Day_a_New_Demon_Was_Born_[HEVC_1080p_10bit]_[B58F7CC9].mkv"

ffprobe -pretty -hide_banner -print_format 'json' -loglevel 'verbose' -show_format -show_streams -select_streams 's' "./[CBM]_Code_Geass_-_01_-_The_Day_a_New_Demon_Was_Born_[HEVC_1080p_10bit]_[B58F7CC9].mkv" > 1.yml