'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "e48ce2d2b309acb7339e60221d2a7103",
"index.html": "9fe8e53525fc2d7189dd866405eda527",
"/": "9fe8e53525fc2d7189dd866405eda527",
"main.dart.js": "ebf30e68943cea7bd1e693fb41c06464",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
".git/config": "c59741d84dec3084f5929d6b23c56228",
".git/objects/0d/f50f1192dcee6e6b708653811c6b460dba5d79": "551e22f9d2412397a47d35c50e98d78d",
".git/objects/0d/0df08f7c3e147a8ae36017cf81a96e35b73717": "106e868f28a72727fb6fb0fa71123633",
".git/objects/35/5eb9b2e1fb8cce9121fcb7ff191c216cc8547f": "ea07abaf3271ced9b05c9da1d75887ef",
".git/objects/56/f22d5bd8f4a90724fcd9aca3a0ec85932c4a48": "7d17bfad19dd7da507eef8f7247368c9",
".git/objects/5a/95b5150a08a80ac21a081069c8cfc6c5fd3d04": "d22c12698bf977cd47bfbdbe4929f2be",
".git/objects/a5/6e4cb32415b2aa13719868aac533a802e635a7": "093e18f3afc7e9f23ebfec959201b354",
".git/objects/d8/c51ebe3665aa6f477b5e82dae58dcb9ad3455f": "66f4b4c168902e5e867d4de5c6607bc3",
".git/objects/cf/718010cd1b960385535e1ff21d756f9d8ce5e0": "b1a7a6cf8912fef4f4884176fee53cc3",
".git/objects/c8/489799f549457b017664d6eb7ccbd82ae5bff4": "c42f0010af11f3865c37215311b254cd",
".git/objects/4e/89617a3696bd10c155ec378f4a65a9f89e9e3a": "d8056e20bae90d092b619c895129e982",
".git/objects/4e/5cc3e13ea8761432f1b3c4dc7d8a9d114e3abf": "117a364d55f4e9ade130a7b3bf9ccbf3",
".git/objects/4e/436152b75934f4bd09e0211576c28b3f159da1": "dae1246a97ee323b6fd2f9cc9ceab5c9",
".git/objects/29/2214367c0af9a2eee8f873b2944224e2fe3f0c": "902d6cf3d5ea70392a74bfc9ded583bb",
".git/objects/16/8f3900896712ae510803df56710dd3c0b78d66": "61a080df77ea194f5cddaad9ac969552",
".git/objects/19/ac0b3e10a781f12223f8faec2c54532b99ade4": "95052106e190a694e4a5fe465a31c150",
".git/objects/43/cb5656a519708244d2509442dda03f696555ef": "7f32cde0211a265ab4974e024de1c9c2",
".git/objects/3a/bf18c41c58c933308c244a875bf383856e103e": "30790d31a35e3622fd7b3849c9bf1894",
".git/objects/01/55ebf995798cd3e0e26823bbbbef373619473b": "b9226f2afce1a3924963f325eac8b4f1",
".git/objects/6c/64c42ab26f45212174debfcacf1b50ae93258c": "98c9857eb62744cf97d50c42d9e7fbf6",
".git/objects/99/1bdc7108cc83640a9bbea6c5e08793293dfac9": "f7ecfa11aae6246fd8f18ead02c294da",
".git/objects/bf/0a5aa9c1366cb50cd06ee422400c14f2f63fd5": "2c6f71b171c2995253ae601ee97d0b9b",
".git/objects/b7/5c1ff4fe68237dd155614dad8706463259f726": "2bdc34ab83630ddc46796edbe7806256",
".git/objects/de/28db843d7df6ed23b8a7526f6b6b4a83425fe7": "797e4f7b3d8dced098c51679ff33e848",
".git/objects/c3/5ced93e171e434e9bb3d581963c9c33eb3918e": "5da769bdb3043d9a4ec9ea5cf153ae66",
".git/objects/cd/22076013ce8b84475eae9bb4cd6c60b5460fbe": "81c620e2d6cbe5638d6c90ee25886389",
".git/objects/e9/e575d0b36ebd696294496017834c26b62e1505": "8eca52e53d59927cc7c00a13888ea67b",
".git/objects/2d/cf3542c874e33cd8ab86ceb6f0ec444228aa78": "66baad0ae5d874f09b6eee790095bc65",
".git/objects/24/b1f14dd348b07c9b8373758bde9ac14d16fd92": "dbf45d6c044044561758a334420e9569",
".git/objects/76/8651b2e249c2517c7b37bdbeea0a5d8bfbb707": "495b1c4fefa633f6afe4dc5840ebe18f",
".git/objects/40/8050d36d609dfa0495956bcb53b311ef2fa36d": "5ee4313447d96471b32c1ea4c37bf2cc",
".git/objects/2e/bab1383cc786ea0b1b41aaf281f857d00bd1a7": "162d5f19f5fff02341c0ac740970fc7a",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "9b31660d374ee78e646abbbe9ec0a6e7",
".git/logs/refs/heads/master": "9b31660d374ee78e646abbbe9ec0a6e7",
".git/logs/refs/remotes/origin/master": "a500ee0c6e20e870ad253d5e525e37fc",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "01b1688f97f94776baae85d77b06048b",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "ecbb0cb5ffb7d773cd5b2407b210cc3b",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/refs/heads/master": "5874533d4bea91b2d2b4f4db104b4272",
".git/refs/remotes/origin/master": "5874533d4bea91b2d2b4f4db104b4272",
".git/index": "4ccb1c708011d76e625eff8edc7e3cf2",
".git/COMMIT_EDITMSG": "a8ba672d93697971031015181d7008c3",
"assets/AssetManifest.json": "c5933e15cd67175bb37d87f288fdee86",
"assets/NOTICES": "16af3afa3bc39300b3bf3c026cc2d951",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/assets/flutter-mark-square-64.png": "2b3a04c5b89764f4eb09b2581ff1ea91",
"assets/assets/Butterfly-209.webm": "112fe9b334802e79d16946e0e56187b7",
"assets/assets/Audio.mp3": "cacda9e1db86899ee79f6e37d66f39cf",
"assets/assets/Butterfly-209_crop.mp4": "d240f1c2d3feb97caf14d9d0e5eeb977",
"assets/assets/Butterfly-209.mp4": "7b38560e7dbf868e58e29984509f2f96",
"assets/assets/bumble_bee_captions.srt": "627d67229b8bb5077475ecc81a610e30",
"assets/assets/bumble_bee_captions.vtt": "b6c1d79a8a45ec8f7ae5322bb04b58a1",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
