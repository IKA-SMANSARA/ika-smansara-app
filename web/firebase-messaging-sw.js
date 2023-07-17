importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js");

firebase.initializeApp({
  apiKey: "AIzaSyCHWwXzQQuRr6548i6mEc-iBobopnvpAWU",
    authDomain: "ika-smansara-donation-platform.firebaseapp.com",
    projectId: "ika-smansara-donation-platform",
    storageBucket: "ika-smansara-donation-platform.appspot.com",
    messagingSenderId: "744574529338",
    appId: "1:744574529338:web:10d71caf191855f17faa03",
    measurementId: "G-YMPK44Y28F"
});

const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
  console.log("onBackgroundMessage", message);
});