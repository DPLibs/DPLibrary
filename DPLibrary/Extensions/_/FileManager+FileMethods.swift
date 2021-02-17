import Foundation

public extension FileManager {
    
    func createTempUrl(_ fileName: String, _ fileExtension: String) -> URL {
        URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(fileName).appendingPathExtension(fileExtension)
    }
    
    func saveFile(_ data: Data?, by url: URL) -> URL? {
        guard let data = data, (try? data.write(to: url)) != nil else { return nil }
        return url
    }
    
    func saveFileToTempUrl(_ data: Data?, _ fileName: String, _ fileExtension: String) -> URL? {
        self.saveFile(data, by: self.createTempUrl(fileName, fileExtension))
    }
    
    func removeFileByUrl(_ url: URL?) {
        guard let url = url, url.isFileURL, self.fileExists(atPath: url.path) else { return }
        try? self.removeItem(at: url)
    }
    
    func removeFileByUrls(_ urls: [URL?]) {
        urls.forEach({ self.removeFileByUrl($0) })
    }
    
}
