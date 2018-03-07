For any changes in the objectspy.xpi, please do as following to get the signed version:

I. SIGN WITH WEB-EXT
1. Extract the file objectspy.xpi and cd into the extracted directory
2. Change version in manifest.json
3. Do your stuff (changing code or something else)
4. Ensure "web-ext" NodeJs module is installed (npm install --global web-ext) and NodeJs version is LTS
5. Run: web-ext sign --artifacts-dir="../web-ext-artifacts" --api-key=$AMO_JWT_ISSUER --api-secret=$AMO_JWT_SECRET --id="{932b2318-b453-4947-8d43-92ac9dcef9bf}"
   Where $AMO_JWT_ISSUER and $AMO_JWT_SECRET are taken from https://addons.mozilla.org/en-US/developers/addon/api/key/
   Where --id is from com.kms.katalon.objectspy.core.InspectSession.FIREFOX_ADDON_UUID (https://addons.mozilla.org/en-US/developers/addon/katalon-utility/edit#edit-addon-technical)
6. The generated XPI file will appear in ../web-ext-artifacts/
7. Take the xpi file and change the name to objectspy.xpi and replace with the one in step 1

See more at https://developer.mozilla.org/en-US/Add-ons/WebExtensions/Getting_started_with_web-ext#Signing_your_extension_for_distribution

II. SIGN WITH WEB
Or upload as https://addons.mozilla.org/en-US/developers/addon/katalon-utility/versions/submit/upload-unlisted
