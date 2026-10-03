// Service worker: caché offline + manejo de notificaciones.
const CACHE = 'recordatorios-v1';
const ASSETS = [
  './',
  './index.html',
  './manifest.webmanifest',
  './icons/icon.svg',
  './icons/icon-180.png',
  './icons/icon-192.png',
  './icons/icon-512.png'
];

self.addEventListener('install', (e) => {
  e.waitUntil(caches.open(CACHE).then((c) => c.addAll(ASSETS)));
  self.skipWaiting();
});

self.addEventListener('activate', (e) => {
  e.waitUntil(
    caches.keys()
      .then((keys) => Promise.all(keys.filter((k) => k !== CACHE).map((k) => caches.delete(k))))
      .then(() => self.clients.claim())
  );
});

// Red primero para que las actualizaciones lleguen; caché si no hay conexión.
self.addEventListener('fetch', (e) => {
  if (e.request.method !== 'GET') return;
  e.respondWith(
    fetch(e.request)
      .then((res) => {
        const copy = res.clone();
        caches.open(CACHE).then((c) => c.put(e.request, copy));
        return res;
      })
      .catch(() => caches.match(e.request).then((r) => r || caches.match('./index.html')))
  );
});

// Acciones de la notificación: "Completar", "Posponer 10 min" o abrir la app.
self.addEventListener('notificationclick', (e) => {
  const { id } = e.notification.data || {};
  e.notification.close();
  e.waitUntil((async () => {
    const clients = await self.clients.matchAll({ type: 'window', includeUncontrolled: true });
    if (e.action && id) {
      clients.forEach((c) => c.postMessage({ type: e.action, id }));
      if (clients.length) return;
    }
    if (clients.length) return clients[0].focus();
    const url = e.action && id ? `./?action=${e.action}&id=${encodeURIComponent(id)}` : './';
    return self.clients.openWindow(url);
  })());
});
