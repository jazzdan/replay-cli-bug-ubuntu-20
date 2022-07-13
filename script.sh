set -ex

uname -a
lsb_release -a 

replay-node sample.js
npx @replayio/replay ls

echo "Delete all local recordings"
npx @replayio/replay rm-all

replay-node --exec ts-node sample.ts
npx @replayio/replay ls