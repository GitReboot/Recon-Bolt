import Foundation
import ValorantAPI

extension AssetClient {
	func getObjectiveInfo() -> BasicPublisher<[ObjectiveInfo]> {
		send(ObjectiveInfoRequest())
	}
}

private struct ObjectiveInfoRequest: AssetRequest {
	let path = "/v1/objectives"
	
	typealias Response = [ObjectiveInfo]
}

struct ObjectiveInfo: Codable, Identifiable {
	typealias ID = Objective.ID
	
	private var uuid: ID
	var id: ID { uuid }
	
	var directive: String?
	var assetPath: String
}