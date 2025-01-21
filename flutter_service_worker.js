'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "14504910082d346af9047e31038e8261",
"assets/AssetManifest.bin.json": "e4a6b432ef27bc53f21c14f76726e8f0",
"assets/AssetManifest.json": "43094a095eff726bfa36eec1249ecc6e",
"assets/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/EBGaramond-Italic-VariableFont_wght.ttf": "63fdbef09d3486493711042a2afc69ec",
"assets/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/KonnectBlackItalic.otf": "ac199b1fc93daf917cd9408c647a09af",
"assets/assets/fonts/KonnectBold.otf": "ce3102ff525e3a5e1f2a8cf62c2f1e18",
"assets/assets/fonts/KonnectBoldItalic.otf": "2fbf22607004efc1b6415acc13609f21",
"assets/assets/fonts/KonnectExtraBold.otf": "1af6d2f5272bad512ccd51d7dafc0a0c",
"assets/assets/fonts/KonnectExtraBoldItalic.otf": "28440b9ecc43a7d0ff93be76e57a9266",
"assets/assets/fonts/KonnectHairline.otf": "bb64c32f33b5c0cba55f648d5ddb69b1",
"assets/assets/fonts/KonnectHairlineItalic.otf": "05521759ff989e83228062ac5ffd39db",
"assets/assets/fonts/KonnectItalic.otf": "de39436235f68b19618bb98a24dba422",
"assets/assets/fonts/KonnectLight.otf": "085dd8ed759873f60b12ffce39064ea9",
"assets/assets/fonts/KonnectLightItalic.otf": "3fad909ba63e9d37aece83c1ef48848e",
"assets/assets/fonts/KonnectMedium.otf": "ccd27af548359fcda9ad599efddaef3f",
"assets/assets/fonts/KonnectMediumItalic.otf": "a231048bab63e2f9fd4baf62cab4c186",
"assets/assets/fonts/KonnectRegular.otf": "367658d3db199c5c0a8dcee27f9b6bc3",
"assets/assets/fonts/KonnectSemiBold.otf": "3f08ca51c351afde3e41cbd2e990e52a",
"assets/assets/fonts/KonnectSemiBoldItalic.otf": "12cdf7671f28316f702337960c7e1e86",
"assets/assets/fonts/KonnectThin.otf": "dd534f3a3a0980e86b9136dcb323dd6e",
"assets/assets/fonts/KonnectThinItalic.otf": "10f973402ed94efe5e6b25551886219a",
"assets/assets/images/003_3_-_copia.jpg": "c90c9d70df493b8b84251708b396da8e",
"assets/assets/images/012_4_-_copia.jpg": "b2dd0e982e33e23368a8c6587b8b0c9b",
"assets/assets/images/013_5_-_copia.jpg": "536778f769fb4e124d14657875b139a4",
"assets/assets/images/1.svg": "6267bf100aab9ddf35f0286a7bf86597",
"assets/assets/images/2.svg": "c134dd550abc69d6023c5c50c790f60d",
"assets/assets/images/92819046cbdecfc90a2dffb7d02742f3.jpg": "de9cf5610086b447985b595731383c35",
"assets/assets/images/anna-kumpan-3J5K-Jb6GRM-unsplash.jpg": "3ed8e766b1ca6d84ed09127460ca8a99",
"assets/assets/images/daiga-ellaby-QORhW0IQHVQ-unsplash.jpg": "f946f3fbb056fbf40023a9ffa16451ff",
"assets/assets/images/dan-cristian-padure-2Zj3TlRCC6E-unsplash.jpg": "4b386043bc30b012cb94ea7c160615da",
"assets/assets/images/Dise%25C3%25B1o_sin_t%25C3%25ADtulo_(10).png": "8113e9b70b432a407cdb48fa72d02c9d",
"assets/assets/images/Dise%25C3%25B1o_sin_t%25C3%25ADtulo_(3).png": "eab92460756e612a2256073bdf10088e",
"assets/assets/images/Dise%25C3%25B1o_sin_t%25C3%25ADtulo_(4).png": "2574159b28f9e52e6d3a4a7d68a23f58",
"assets/assets/images/Dise%25C3%25B1o_sin_t%25C3%25ADtulo_(5).png": "ff20ceb63acf06e970a766d84f0358a1",
"assets/assets/images/Dise%25C3%25B1o_sin_t%25C3%25ADtulo_(6).png": "0ca0a25f8c1cd50674b52d1d3bbd19aa",
"assets/assets/images/Dise%25C3%25B1o_sin_t%25C3%25ADtulo_(7).png": "9b35fed00523973d93b3b4138ece6474",
"assets/assets/images/Dise%25C3%25B1o_sin_t%25C3%25ADtulo_(8).png": "6e3145f30430d319a88455287f477004",
"assets/assets/images/Dise%25C3%25B1o_sin_t%25C3%25ADtulo_(9).png": "5e74b32856d2e87f49b1a2f256f1b6d5",
"assets/assets/images/Diseo_sin_ttulo_(10).png": "8113e9b70b432a407cdb48fa72d02c9d",
"assets/assets/images/Diseo_sin_ttulo_(3).png": "eab92460756e612a2256073bdf10088e",
"assets/assets/images/Diseo_sin_ttulo_(4).png": "2574159b28f9e52e6d3a4a7d68a23f58",
"assets/assets/images/Diseo_sin_ttulo_(5).png": "ff20ceb63acf06e970a766d84f0358a1",
"assets/assets/images/Diseo_sin_ttulo_(6).png": "0ca0a25f8c1cd50674b52d1d3bbd19aa",
"assets/assets/images/Diseo_sin_ttulo_(7).png": "9b35fed00523973d93b3b4138ece6474",
"assets/assets/images/Diseo_sin_ttulo_(8).png": "6e3145f30430d319a88455287f477004",
"assets/assets/images/Diseo_sin_ttulo_(9).png": "5e74b32856d2e87f49b1a2f256f1b6d5",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/female-s-hands-with-gel-manicure-and-shiny-glitter-2023-11-27-05-28-18-utc.jpg": "59d508b8d5fd68e19f72e66992fd9379",
"assets/assets/images/FLOUamarillo.svg": "ccc9ea93a5ca4daabf4f903ca84f7815",
"assets/assets/images/FLOUazul.svg": "6e7a793cb966ef817db07cffbd0cb40d",
"assets/assets/images/FLOUblanco.svg": "28e192e453112b8f5df9a02338f54a11",
"assets/assets/images/FLOUnaranja.svg": "77b37909d3ec6449aa0c759415b9c613",
"assets/assets/images/FLOUnegro.svg": "f3e122947f7be9c1be4d0c0f36dafa09",
"assets/assets/images/FLOUrosa.svg": "0946d5f008353be0d0dfaec5f69c9740",
"assets/assets/images/Flou_01.png": "6b613109a5063382298f302bfc88e246",
"assets/assets/images/Flou_02.png": "82cbc512b9de8072ec5350d041063263",
"assets/assets/images/Flou_03.png": "b826e373be9d3c2d100aee931972c951",
"assets/assets/images/Flou_04.png": "2970238199e955ff7e064beff08fe3d6",
"assets/assets/images/Flou_05.png": "d06ddf240505cd76b5cbea6e12545c7a",
"assets/assets/images/Flou_06.png": "9b3126ca33ebe10be9ae4c6bc433ae31",
"assets/assets/images/Flou_07.png": "bb11ec1130890d2f4b76edd156090c8f",
"assets/assets/images/Flou_08.png": "1ba0f0e33cf667adbd47a247c768a336",
"assets/assets/images/Flou_09.png": "57376c275620f401754ae1b9a84d6456",
"assets/assets/images/Flou_10.png": "63ab6398bfdb06aa5c0e8788a458834d",
"assets/assets/images/Flou_11.png": "13cdc7f7aa11264d106cfe08c0bbc9c6",
"assets/assets/images/Flou_12.png": "f176bab50b3f7f46862c06031cc4d5c9",
"assets/assets/images/Flou_13.png": "34e46f85043877b87cafef37068e2898",
"assets/assets/images/FLOU_estrategia_abc_(dragged)_2.pdf.png": "399127de660ca298edd0393d6fbb339f",
"assets/assets/images/imagen_2024-10-18_220236818.png": "c9807912d12c6135dfb03f5e39e459d1",
"assets/assets/images/istockphoto-1174430306-612x612.jpg": "0d99f7c961bb3aa2b992b18f46c2fd43",
"assets/assets/images/istockphoto-1332121595-612x612.jpg": "8b40319f41784b5ea6fb8efb0500ac26",
"assets/assets/images/k1ryn_2.svg": "c134dd550abc69d6023c5c50c790f60d",
"assets/assets/images/nika-benedictova-pi2rUlEdCsc-unsplash.jpg": "6844fe3c5dd45a07e0420244f8cc068e",
"assets/assets/images/Onda.svg": "778762fafafdf881d84dad87a7a0e267",
"assets/assets/images/OndaCoralReverse.svg": "9d90a396123091ea50df2c9516ea950b",
"assets/assets/images/OndaCoral_(1).svg": "d6b79239fdc5494b0f9abab81d3a29ae",
"assets/assets/images/OndaCoral_(2).svg": "f5527ebf8673bafe6a60ef900db7aab5",
"assets/assets/images/OndaFlouAmarillo.svg": "6c8fc8bf2bbec4382f6c761e2aab4d18",
"assets/assets/images/OndaFlouAzul.svg": "af8e0df1359d4d5f3478799c1164c017",
"assets/assets/images/OndaFlouBlanco.svg": "40c3ec4c21d84c766fdb1a24948f307b",
"assets/assets/images/OndaFlouCoral.svg": "14d4d9659d5d44411b23d7871021363a",
"assets/assets/images/OndaFlouGrandeCoral.svg": "81fadc7551a7836e1305c1c5a1e1db11",
"assets/assets/images/OndaFlouGrandeCoral_(1).svg": "f2b5b9d5e412f9a778195d3418315d4a",
"assets/assets/images/OndaFlouGrandeGlowPink.svg": "e21f5bba07b3b2e05be712cb02905869",
"assets/assets/images/OndaFlouGrandeModerBlue.svg": "8c7807bb70d67c9146c653c18dd08552",
"assets/assets/images/OndaFlouNegro.svg": "fab3ba49f3059cbb352d1717a36a0e42",
"assets/assets/images/OndaFlouRosa.svg": "9fcf650c4fbb3ef20f7f74cb9e987f5b",
"assets/assets/images/OndaGlowPink.svg": "e74a43fcdc3037e19ba64d3a714f907d",
"assets/assets/images/OndaGlowPinkReverse.svg": "d243475b8c1534846baf5dc471b11ec0",
"assets/assets/images/OndaModernBlue.svg": "e79f97fb18d5bed97338d12586186b27",
"assets/assets/images/OndaModernBlueReverse.svg": "aacfb45b8bb219611a40b0ae10231a8b",
"assets/assets/images/OndaModernBlue_(1).svg": "4190291e5b1cf6f5ea36a52dd0b94924",
"assets/assets/images/OndaNeonFlou.svg": "df08bb2e47f424f43b312c66de983df9",
"assets/assets/images/OndaNeonFlouReverse.svg": "837079154c9849c7dedbeb83e897aede",
"assets/assets/images/OndaNeonFlou_(1).svg": "479ebf09c7e6a79b3b917a67033695ab",
"assets/assets/images/pexels-danxavier-908602.jpg": "22b44816f41d26ab546429a30d614bba",
"assets/assets/images/pexels-valeriya-939836.jpg": "d6ec421e60530721229967106fef9161",
"assets/assets/images/the-manicure-master-performs-the-procedure-of-appl-2023-12-20-17-51-04-utc.jpg": "4383c78c77307f0eefb32675eae49e75",
"assets/assets/images/the-master-of-the-nail-service-makes-a-manicure-cl-2023-12-20-17-51-04-utc.jpg": "f239d6e68e9d151b5ab9db4eaae60241",
"assets/assets/jsons/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/FontManifest.json": "95c5c404ba674f6fac06244512e23dbe",
"assets/fonts/MaterialIcons-Regular.otf": "8529a7ea03dcd19ee334419ea091f606",
"assets/NOTICES": "16ff38945308d28dad8c204c2c034806",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "adac17b5b2a0c6ebbb29b9bfbb03c91e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "c624c2618a2ce162bf15607bd46341d1",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "2704101cb06ce66e2000356a312be25c",
"FLOUamarillo.svg": "ccc9ea93a5ca4daabf4f903ca84f7815",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "cf71478ab56e2edf8bd09f703abb64da",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "9e5a4723f7de6863adef4475f8577848",
"/": "9e5a4723f7de6863adef4475f8577848",
"main.dart.js": "02e12714dd82c597d546a3e3c3564f82",
"OndaModernBlue_(1).svg": "4190291e5b1cf6f5ea36a52dd0b94924",
"version.json": "703c185fa33346088d6791ce16dfff20"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
