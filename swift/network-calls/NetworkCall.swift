import Foundation

// MARK: - Github user model

struct GithubUser: Codable {
    let login: String
    let avatarUrl: String
    let bio: String
}

// MARK: - Errors

enum GHError: Error {
    case invalidUrl
    case invalidResponse
    case invalidData
}

func getUser() async throws -> GithubUser {
    let endpoint = "https://api.github.com/users/avijeetpandey"

    guard let url = URL(string: endpoint) else { throw GHError.invalidUrl }

    let (data, response) = try await URLSession.shared.data(from: url)

    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
        throw GHError.invalidResponse
    }

    do {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(GithubUser.self, from: data)
    } catch {
        throw GHError.invalidData
    }
}

do {
    let user = try await getUser()
    print(user.bio)
} catch {
    print(error.localizedDescription)
}
