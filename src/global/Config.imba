const firebase = require 'firebase/app'

require 'firebase/auth'
require 'firebase/database'

export var FirebaseConf = {
  apiKey: "AIzaSyCMhPKTM2PS-FyaVwbVc8YSFQf99n2hsns",
  authDomain: "qdataviz-192203.firebaseapp.com",
  databaseURL: "https://qdataviz-192203.firebaseio.com",
  projectId: "qdataviz-192203",
  storageBucket: "qdataviz-192203.appspot.com",
  messagingSenderId: "115800325828"
}
export var FirebaseApp  = firebase:default.initializeApp(FirebaseConf)
export var FirebaseDB   = firebaseApp:firebase_:database
export var FirebaseAuth = firebaseApp:firebase_:auth
