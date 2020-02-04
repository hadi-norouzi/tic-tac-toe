'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "f3875c00112b602207a211d053c930b6",
"/main.dart.js": "1c356b0311c9c49b8e433e60773d8e72",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/manifest.json": "e7289808d0e8a706d00239386a16ecd9",
"/assets/LICENSE": "2d9bcc62b6ddb722af4fd9bb8d50c432",
"/assets/asset/celebration.flr": "3f0b33a87ff28264abebd6c317976c63",
"/assets/asset/tic_tac_toe_loader_.gif": "ce6f7ffd885e477efa2110437ab779dd",
"/assets/AssetManifest.json": "5cff9f15248eb3717a7abb2a25830afa",
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
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
