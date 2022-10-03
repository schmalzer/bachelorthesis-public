// This file can be replaced during build by using the `fileReplacements` array.
// `ng build --prod` replaces `environment.ts` with `environment.prod.ts`.
// The list of file replacements can be found in `angular.json`.

import { UrlResolver } from "@angular/compiler";

export const environment = {
  production: false,
  url: "http://localhost:8086/",
  webserverUrl: "http://localhost:81/",
  //token: "R57YzfT_1lU53LmVZqpIEGFmCTM-Ekk_TmZMWnMKORhdKLQ7NekMliri32Lcb_FD6t7Yqg85nOkMW30TntQFtw==",
  token: "PAqdPUHHLwxwjdIynl89pryeaJX8-cJR_aLJotLSF7hyvTX_r0721ArM5JxQWx6wXjHEeeFEdRsrRvsMc4naZw==",
  org: "tuwien"
};

/*
 * For easier debugging in development mode, you can import the following file
 * to ignore zone related error stack frames such as `zone.run`, `zoneDelegate.invokeTask`.
 *
 * This import should be commented out in production mode because it will have a negative impact
 * on performance if an error is thrown.
 */
// import 'zone.js/dist/zone-error';  // Included with Angular CLI.
