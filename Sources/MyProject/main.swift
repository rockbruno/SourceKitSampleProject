let sourceKit = SourceKit()
let keys = sourceKit.keys!
let requests = sourceKit.requests!
let values = sourceKit.values!

func process(files: [String]) {
    var features = [String]()
    for file in files {
        features.append(contentsOf: findFeatures(inFile: file))
    }
    process(result: features)
}

func findFeatures(inFile file: String) -> [String] {
    let req = SKRequestDictionary(sourcekitd: sourceKit)

    req[keys.request] = requests.editor_open
    req[keys.name] = file
    req[keys.sourcefile] = file

    print(req)
    let response = sourceKit.sendSync(req)
    print(response)

    return []
}

func process(result: [String]) {
}
