#/bin/bash
/factorio/factorio/bin/x64/factorio --create /factorio/factorio/saves/world.zip
/factorio/factorio/bin/x64/factorio --port 34197 --start-server /factorio/factorio/saves/world.zip --server-settings /factorio/factorio/data/server-settings.json
while :
do
        sleep 20
done