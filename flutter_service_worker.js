'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"manifest.json": "ee736b06485126a6fe885a93edde5fe8",
"index.html": "90281887f0418ac05c3e591c50287494",
"/": "90281887f0418ac05c3e591c50287494",
"assets/AssetManifest.bin": "73f8323210245cbd5e34d03402765d2b",
"assets/fonts/MaterialIcons-Regular.otf": "801fc4c627475a3c94a1f81d1ea44dcc",
"assets/assets/fonts/raleway/Raleway-Light.ttf": "a36750fa9f5530b0c2760267df04ae37",
"assets/assets/fonts/raleway/Raleway-Regular.ttf": "d95649da7dfb965a289ac29105ce8771",
"assets/assets/fonts/raleway/Raleway-Italic.ttf": "5579b5fda3005b7d349336b3425b9f89",
"assets/assets/fonts/raleway/Raleway-Bold.ttf": "21c82294041b1504a5cbe4f566c8acd6",
"assets/assets/fonts/lato/Lato-Light.ttf": "2bcc211c05fc425a57b2767a4cdcf174",
"assets/assets/fonts/lato/Lato-Regular.ttf": "122dd68d69fe9587e062d20d9ff5de2a",
"assets/assets/fonts/lato/Lato-Italic.ttf": "5d22f337a040ae2857e36e7c5800369b",
"assets/assets/fonts/lato/Lato-Bold.ttf": "24b516c266d7341c954cb2918f1c8f38",
"assets/assets/fonts/poppins/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/poppins/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/poppins/Poppins-Italic.ttf": "c1034239929f4651cc17d09ed3a28c69",
"assets/assets/fonts/poppins/Poppins-Light.ttf": "fcc40ae9a542d001971e53eaed948410",
"assets/assets/fonts/poppins/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/lottie/loading/loading2.json": "ec9b43a6f22cfd2bca14733316a5acd8",
"assets/assets/lottie/loading/loading1.json": "93cc8a057a539413f28b64337958aff1",
"assets/assets/lottie/error/error1.json": "fb6b4d46fc0d68e1617f2ca36fa39d6b",
"assets/assets/lottie/weather/forbidden1.json": "ffc4c90c5ab795b33b7d626fae413f83",
"assets/assets/lottie/weather/rain1.json": "18cb847f8a251869234f03c3f12627a2",
"assets/assets/lottie/weather/humidity2.json": "6eb2dafb3974015bac94fe57eaf73831",
"assets/assets/lottie/weather/humidity3.json": "2c9ccb602ef4c370efac4f20cfa29071",
"assets/assets/lottie/weather/snow1.json": "6c19eb496abe45e30201d353d930dd83",
"assets/assets/lottie/weather/snow3.json": "1b88c6a21afcc1fcd2257c3514409577",
"assets/assets/lottie/weather/nodata1.json": "982aab9d93339b4f3578a13f17907270",
"assets/assets/lottie/weather/wind1.json": "92c719d362415d7c2a13f36b604a71fd",
"assets/assets/lottie/weather/humidity1.json": "146dc62f81bfb7c3193222eb9adbd5f4",
"assets/assets/lottie/weather/snow2.json": "df183ff66475b0ebb0d085a5e0458061",
"assets/assets/lottie/weather/uv1.json": "4a637a4cbf3ff45e690853e3e9dc5361",
"assets/assets/lottie/success/success1.json": "c16949ac5deb2c7e94c01165dd7d35be",
"assets/assets/splash/skycast512.png": "d9184d24e4adc7c8b4448346a83607bb",
"assets/AssetManifest.bin.json": "289ba1c8ef6eebb3a092762a8999242d",
"assets/FontManifest.json": "162bf53a1f273b96cd34095a08f2e8cc",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/NOTICES": "87383cdee84b7ff8d5747e8141d3272f",
"assets/AssetManifest.json": "205c9c87ce4c55f2feb203adf90f9f5a",
"assets/packages/localization/test/assets/lang2/en_US.json": "b389499c34b7ee2ec98c62fe49e08fa0",
"assets/packages/localization/test/assets/lang2/pt_BR.json": "08e9b784a138126822761beec7614524",
"assets/packages/localization/test/assets/lang/en_US.json": "18804652fbce3b62aacb6cce6f572f3c",
"assets/packages/localization/test/assets/lang/pt_BR.json": "f999b93065fe17d355d1ac5dcc1ff830",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/env": "10fba8a5bc75f8ebe1f63ec54a17860a",
"splash/img/dark-4x.png": "1306f1a2fee5753c8fc58075cc05b853",
"splash/img/light-3x.png": "33e305a72033cbf92a0c7d86d77a8823",
"splash/img/light-2x.png": "a650ba3e626267b0684dfbaa2e23a5de",
"splash/img/dark-1x.png": "ef594c8a0a930bdb60542c2bc4e171b0",
"splash/img/dark-2x.png": "a650ba3e626267b0684dfbaa2e23a5de",
"splash/img/light-1x.png": "ef594c8a0a930bdb60542c2bc4e171b0",
"splash/img/dark-3x.png": "33e305a72033cbf92a0c7d86d77a8823",
"splash/img/light-4x.png": "1306f1a2fee5753c8fc58075cc05b853",
"favicon.png": "5f0e0dc2ee232f31d5ca1ee00929c665",
"main.dart.js": "913fb97fc00cb88926158d5a81c233dd",
"version.json": "e8c20443d416f55dacd68f7f1db7cd09",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"icons/Icon-512.png": "1306f1a2fee5753c8fc58075cc05b853",
"icons/Icon-192.png": "f3ad53321b088d54782382b7565b71dc",
"icons/Icon-maskable-192.png": "f3ad53321b088d54782382b7565b71dc",
"icons/Icon-maskable-512.png": "1306f1a2fee5753c8fc58075cc05b853"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
