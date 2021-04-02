// Generated by ReScript, PLEASE EDIT WITH CARE


var allManualVersions = [
  [
    "latest",
    "v8.2.0"
  ],
  [
    "v8.0.0",
    "< v8.2.0"
  ]
];

function languageManual(version) {
  return [
          [
            "Overview",
            "/docs/manual/" + version + "/introduction"
          ],
          [
            "Language Features",
            "/docs/manual/" + version + "/overview"
          ],
          [
            "JS Interop",
            "/docs/manual/" + version + "/embed-raw-javascript"
          ],
          [
            "Build System",
            "/docs/manual/" + version + "/build-overview"
          ]
        ];
}

var ecosystem = [
  [
    "Package Index",
    "/packages"
  ],
  [
    "rescript-react",
    "/docs/react/latest/introduction"
  ],
  [
    "GenType",
    "/docs/gentype/latest/introduction"
  ],
  [
    "Reanalyze",
    "https://github.com/reason-association/reanalyze"
  ]
];

var tools = [[
    "Syntax Lookup",
    "/syntax-lookup"
  ]];

export {
  allManualVersions ,
  languageManual ,
  ecosystem ,
  tools ,
  
}
/* No side effect */
