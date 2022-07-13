# Instructions

## Pre-reqs
1. Install Docker
2. [Install earthly](https://earthly.dev/get-earthly)

## To run
`earthly +run`

This builds a Docker image based on ubuntu 20.04, installs node, npm and `@replayio/node`. Then when it runs it runs [this script](./script.sh) which records a js file, and sees if it is on the file system. Then it records a ts file with `ts-node` and checks to see if _it_ is on the file system.

## Result
Here's the output that I get when I run it today:

```
 + uname -a
 Linux a7eee4a7bd8d 4.14.268-205.500.amzn2.x86_64 #1 SMP Wed Mar 2 18:38:38 UTC 2022 x86_64 x86_64 x86_64 GNU/Linux
 + lsb_release -a
 Distributor ID:	Ubuntu
 Description:	Ubuntu 20.04.4 LTS
 Release:	20.04
 Codename:	focal
 No LSB modules are available.
 + replay-node sample.js
 Downloading linux-replay-node...
 Updated.
 1
 2
 3
 4
 5
 + npx @replayio/replay ls
 npm WARN exec The following package was not found and will be installed: @replayio/replay
 [
   {
     "id": "42e6afa2-d1eb-4864-b665-583ffbef3ea7",
     "createTime": "Wed Jul 13 2022 18:23:00 GMT+0000 (Coordinated Universal Time)",
     "runtime": "node",
     "metadata": {
       "argv": [
         "sample.js"
       ],
       "title": "Replay of sample.js"
     },
     "sourcemaps": [],
     "status": "onDisk",
     "path": "/root/.replay/recording-42e6afa2-d1eb-4864-b665-583ffbef3ea7.dat"
   }
 ]
 + echo 'Delete all local recordings'
 + npx @replayio/replay rm-all
 Delete all local recordings
 + replay-node --exec ts-node sample.ts
 1
 2
 3
 4
 5
 + npx @replayio/replay ls
 [
   {
     "id": "e5ba4735-f8ef-4c45-9e54-0762841050e8",
     "createTime": "Wed Jul 13 2022 18:23:05 GMT+0000 (Coordinated Universal Time)",
     "runtime": "node",
     "metadata": {
       "argv": [
         "/usr/bin/ts-node",
         "sample.ts"
       ],
       "title": "Replay of ts-node"
     },
     "sourcemaps": [
       {
         "path": "/root/.replay/sourcemap-5323697962.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/dist/index.js.map",
         "targetContentHash": "sha256:cf417fbd9bb51a2e422d497c87443f15d941802ff4ece69733f69952b7581295",
         "targetURLHash": "sha256:bc8eb1a9227bdaf462ea85a88ca6737c3f39f508bda98feb052ea3662578c24d",
         "targetMapURLHash": "sha256:d572e0e348844929749f426b39c962c7fcac46e0c88676da99a1d377e76bec7f"
       },
       {
         "path": "/root/.replay/sourcemap-4212107665.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/dist/util.js.map",
         "targetContentHash": "sha256:69bb9811621feb6ec5994839c04f24aae17045fc3d68c209e15150433dd52361",
         "targetURLHash": "sha256:8caa9b880eb4d8b577c1556fca30441f4112de1b4e6bed2ea59d9b4663f5ab10",
         "targetMapURLHash": "sha256:41b691ee0a80016e709904531a46cb450cdaff06fb4d11b71e5ede0769594358"
       },
       {
         "path": "/root/.replay/sourcemap-9912455223.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/dist/ts-internals.js.map",
         "targetContentHash": "sha256:9f3b73b1358075b6f9668134e31cbeea67362076efd3721719edc0bc289c0eb6",
         "targetURLHash": "sha256:b3985e28f128fa03f5e39ebf8bd56a33c3fdda6845c38b958e2a72fccf08a24a",
         "targetMapURLHash": "sha256:ee0caefc82718f6d4b03bf6f351cf1bb806417a737bc41baa137d59b1c81d351"
       },
       {
         "path": "/root/.replay/sourcemap-8190507461.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/dist/tsconfigs.js.map",
         "targetContentHash": "sha256:a597694211b623fda28459696600561740104f388e7b242d187470e288e9b59e",
         "targetURLHash": "sha256:0b8135c5550acb3f8cb73ab13e165118016669c94caff4e41b58d1c7cbb78bfe",
         "targetMapURLHash": "sha256:77f1752d72e1956a85b6066618f2d16b37ebf217621690bcacba817a29dbb444"
       },
       {
         "path": "/root/.replay/sourcemap-6840413228.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/dist/module-type-classifier.js.map",
         "targetContentHash": "sha256:f29a1b1a2282e161e03e243d2457f282b39ef2e54b3ed4e98c57eb57f1768120",
         "targetURLHash": "sha256:51aa3cac264a55abc700e97f8485775775214fd5009bd451b38ab81a8159a6f2",
         "targetMapURLHash": "sha256:2a5dbbc48eb227b56d323d8a47c39b5418ffa0ccef05ee6fdcda402ff04f9b85"
       },
       {
         "path": "/root/.replay/sourcemap-4071747169.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/dist/resolver-functions.js.map",
         "targetContentHash": "sha256:3f2f42bb670de288998a55037034780a0a914a6a238a6ac1e82ddc47f919bfca",
         "targetURLHash": "sha256:fe68a2730d2faf62f9f9b322e46343919edcbbd217940c8922edec3f5cd32fb5",
         "targetMapURLHash": "sha256:02f4b681e25b9b3f701b554f2e69ccfa4cb7b28c00ec93962c2a1e626a4f9b82"
       },
       {
         "path": "/root/.replay/sourcemap-6298046587.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/dist/cjs-resolve-hooks.js.map",
         "targetContentHash": "sha256:ae2f750d5e505962db3633fa2e381cb56882289b590e47be88bd9706e38fb56b",
         "targetURLHash": "sha256:81f793df0bf38f042010ef4010f82ca5354cbc34ee3ffe3d36f744b34fed5556",
         "targetMapURLHash": "sha256:d0ce1f50143e5355cb54ab2506ce1a5e9d6a1ea4cb9fe6bbdafa4e9a4c2b8816"
       },
       {
         "path": "/root/.replay/sourcemap-762693707.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/dist/configuration.js.map",
         "targetContentHash": "sha256:772c2d521ab8abba090d90cf3cb6eaa81ef0ed865c298b68890b343f2b33c0b6",
         "targetURLHash": "sha256:bd8332aaea06112de18e8374544a861c799bbf28b1ef2adb8a17695275364239",
         "targetMapURLHash": "sha256:fbae3764e95cef361f4a70b836cdbd533787740b39368ff5fad22e2d41acae65"
       },
       {
         "path": "/root/.replay/sourcemap-1496991612.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/dist/file-extensions.js.map",
         "targetContentHash": "sha256:b05f656e81806c9e9b76579b14c4dcb8cb899b8064a5220dcaa51e5cfc6cbd41",
         "targetURLHash": "sha256:09534764e32c555e26eb36dee54ed2c3c63cf25be1577c95e820deee2500c100",
         "targetMapURLHash": "sha256:38abcf445a6f6a3554675470e2c9fc99d2e56bc2738f274a027187c46f66256a"
       },
       {
         "path": "/root/.replay/sourcemap-1654284494.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/dist/child/spawn-child.js.map",
         "targetContentHash": "sha256:b377c8ad22f593c95988c6a3fa1c9bcd97cc1f6d252776912af61511dd37173f",
         "targetURLHash": "sha256:5875097bfa4dac6fea7e1e6de7099191b35019cd58908e71d6c264e5c662c53c",
         "targetMapURLHash": "sha256:e0830965f518a77b4013e91be53967f5d21bec8a907dd01939b47a5afaa96ee7"
       },
       {
         "path": "/root/.replay/sourcemap-3991101179.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/dist/node-module-type-classifier.js.map",
         "targetContentHash": "sha256:62ca8ac2ad6bde3859d26c565d4fafafb867d320b40659da570cabb19a27c13f",
         "targetURLHash": "sha256:3021189fd7cca0461802d74727b0453dfdf5a4339830fd265af8b342b3065ce7",
         "targetMapURLHash": "sha256:ba5b2d7a1512e4cbaea90ae73a7fce6f8dd910d2d4220d60b161c59eaeb3a6d7"
       },
       {
         "path": "/root/.replay/sourcemap-3720260984.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/node_modules/@jridgewell/resolve-uri/dist/resolve-uri.umd.js.map",
         "targetContentHash": "sha256:ab0ef0a357b4a99191e65a180b0088473f9ce9ac7d9efc644249e54f40f7c3f6",
         "targetURLHash": "sha256:b0f0c4e3b5f4968e823622dda8ff8c21c4e88027e0ecca057cf9037070ab7ebc",
         "targetMapURLHash": "sha256:8b3cebd8392256ef66ece828273443997edbd3b9a3a0c9e40e8ec629fe04adfe"
       },
       {
         "path": "/root/.replay/sourcemap-5495078269.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/dist/ts-transpile-module.js.map",
         "targetContentHash": "sha256:71d675f4af957bec5bb4394bf644ab3a1153d17d6f8d6b3e8a32b51b3da7dae3",
         "targetURLHash": "sha256:face8a63591c0aad295670b91923fa9fcdaed48925d2ecb7e1330ee9778fa99b",
         "targetMapURLHash": "sha256:3c25f54e14393a6bf5656223d866d062b4172d7ac65fbd39a0c45696485216cf"
       },
       {
         "path": "/root/.replay/sourcemap-7833927192.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/node_modules/@jridgewell/trace-mapping/dist/trace-mapping.umd.js.map",
         "targetContentHash": "sha256:347dc53fb7d0ad1185be789e10dc17cbbe93b21b7c253dc6ac4663a8f2124683",
         "targetURLHash": "sha256:290396475cdbea41c6d2a9eea19b2270e139d0bf2111248fc948a78520b9bddf",
         "targetMapURLHash": "sha256:8ee5056e79722156612e4604a4007b1d103fa7d2dec9874b14dd3b1ba42a5c7a"
       },
       {
         "path": "/root/.replay/sourcemap-8506999381.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/dist/repl.js.map",
         "targetContentHash": "sha256:45b1563a3b5f4b037e12fc722c957f7ad68f4fa1843543c5432cc079f033aee3",
         "targetURLHash": "sha256:e8879dcab9580a5d21fda0aec5be85e2f832732ebb611b68324fd88f9cfb3291",
         "targetMapURLHash": "sha256:7e60b7063c5525c4f20744a0a7089f63947155f677f64e6b684445516bef141a"
       },
       {
         "path": "/root/.replay/sourcemap-7914158861.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/dist/bin.js.map",
         "targetContentHash": "sha256:71af7af88321ea037a8f4c9b18ace89e3fd007d19f9bf05d150d5b430858ef22",
         "targetURLHash": "sha256:aa9bd112f227af60d6dfb1f137c5e0259de7b045c688c345fb7ea100fa900829",
         "targetMapURLHash": "sha256:3b1c762cb84c8d376f27a86186851bb197c0faa48b1985692f05a9f054449a9d"
       },
       {
         "path": "/root/.replay/sourcemap-6915881894.map",
         "baseURL": "file:///usr/lib/node_modules/ts-node/node_modules/@jridgewell/sourcemap-codec/dist/sourcemap-codec.umd.js.map",
         "targetContentHash": "sha256:579c773e8a14d0efcdc071156f950a1a9821a6bd186ec56d3a26dd319bb73b24",
         "targetURLHash": "sha256:c45b78a654cd400e71be1b91944ba0552f28ba63b30c54a8cfb9a325f086d887",
         "targetMapURLHash": "sha256:005b99279bb58ca26392e058b38da12b0a1f076aeda52159a5d3e19a763b571c"
       }
     ],
     "status": "onDisk",
     "path": "/root/.replay/recording-e5ba4735-f8ef-4c45-9e54-0762841050e8.dat"
   }
 ]
```
