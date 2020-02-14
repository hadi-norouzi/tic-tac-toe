'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "f3875c00112b602207a211d053c930b6",
"/main.dart.js": "550cda866f53df3e5e1c700caf812236",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/manifest.json": "e7289808d0e8a706d00239386a16ecd9",
"/assets/LICENSE": "0d7c9148dbd6a12b0391b6d1cfdd2538",
"/assets/asset/celebration.flr": "3f0b33a87ff28264abebd6c317976c63",
"/assets/asset/GitHub.png": "ef7a02b69836dc8b6a732a54c4200dcb",
"/assets/asset/tic_tac_toe_loader_.gif": "ce6f7ffd885e477efa2110437ab779dd",
"/assets/asset/twitter.png": "2c64644f9a906fad8f7a5473120702ed",
"/assets/AssetManifest.json": "90a09c1df9f94a081fa0796d0eec4797",
"/assets/FontManifest.json": "580ff1a5d08679ded8fcf5c6848cece7",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
