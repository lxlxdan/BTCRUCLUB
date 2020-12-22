import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct LxlxdanGithubIo: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "LxlxdanGithubIo"
    var description = "A description of LxlxdanGithubIo"
    var language: Language { .english }
    var imagePath: Path? { nil }
}
try LxlxdanGithubIo().publish(withTheme: .foundation)

try LxlxdanGithubIo().publish(using: [
    .deploy(using: .gitHub("lxlxdan/BTCRUCLUB"))
])
