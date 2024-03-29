# skycast

![img.png](assets/splash/skycast512.png)

Sky Cast, to check your prefer localization weather

##  Technical information

flutter version: **3.16.0 or 3.16.4**


(optional but **recommended**) docker: **24.0.7**


(if doesn't have docker installed) GnuPG: **latest version**

## Getting Started

### 0-) [if you don't have docker installed] install GnuPG

on macOS is ease with:
```bash
brew install gnupg
``` 

### 1-) Create an account on weatherapi.com

![img.png](readme_images/img.png)

> :information_source: (optional) create a google api key to get suggestions of places when looking for locations https://console.cloud.google.com/apis/credentials?hl=en&project=(yourprojectname)

###  2-) copy the env.example an name it env
``` bash

cp env.example env
```

#### 2.1-) Setup the env variables

```bash
ENV=production  
API_KEY= #get your api key from weatherapi.com
BASE_URL_WEATHER=api.weatherapi.com  
PREFIX_URL_WEATHER=/v1  
PATH_FORECAST=/forecast.json  
PATH_CONDITION_TRANSLATIONS=/docs/conditions.json  
  
GOOGLE_MAPS_API_KEY= # get your google api key from the GCP of your own account
PATH_TO_GET_SUGGESTIONS_FOR_DIRECTIONS=/maps/api/place/autocomplete/json  
BASE_URL_TO_GET_MAP_DIRECTIONS=maps.googleapis.com
``` 
###  3-) Recreate the keystore 
#### (you can skip this step, please review the "Q&A" below section)
> :warning:  I have test this command only with linux and macos

> :information_source:  Run this comman inside the root project path
```bash
docker compose -f build_key_store/docker-compose.yml up -d && docker compose -f build_key_store/docker-compose.yml down && docker compose -f build_key_store/docker-compose.yml rm -fsv && docker image rm build_key_store-app
```
If you don't have **docker** installed, then just run this command (make sure yourself that to install the **GnuPG** dependency in your machine)
> :information_source:  Run this comman inside the root project path
```bash
gpg -d --passphrase "nikenikenike" --batch android/app/skycastApp.jks.asc > android/app/skycastApp.jks
```

and then, you are good to go.

## Running Test
just run:
```bash
flutter test
```

# A&Q

## why is needed to recreate the keystore?

Due to, is the only way to use the Google sign in feature in debug mode, the sha1 signature is already registered on the Firebase console, otherwise, you must share with me your sha1 signature from the debug.keystore file in your local setup

## Why if I want to skip the "3-) Recreate the keystore" step?
You can skip it, and you have to set a variable into the **android/local.properties** file

you have to add a variable called **flutter.useLocalDebugKeyStore=true** and set it to true

![img.png](readme_images/skip_step_3.png)

In the **android/app/build.gradle** will read that variable

![img.png](readme_images/example_build_gradle_skip_step_3.png)

And that's all, you can now use your local debug.keystore.

> :warning: skipping the step 3, you are not allowed to test the google sign in feature.

Enjoy the app!.