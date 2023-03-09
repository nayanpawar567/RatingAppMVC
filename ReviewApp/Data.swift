/* 
Copyright (c) 2023 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct DataItem : Codable {
	let ratting_id : Int?
	let ratting : Int?
	let review : String?
	let review_reply : String?
	let created : String?
	let id : Int?
	let first_name : String?
	let last_name : String?
	let profile_image_url : String?
	let following : String?

	enum CodingKeys: String, CodingKey {

		case ratting_id = "ratting_id"
		case ratting = "ratting"
		case review = "review"
		case review_reply = "review_reply"
		case created = "created"
		case id = "id"
		case first_name = "first_name"
		case last_name = "last_name"
		case profile_image_url = "profile_image_url"
		case following = "following"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		ratting_id = try values.decodeIfPresent(Int.self, forKey: .ratting_id)
		ratting = try values.decodeIfPresent(Int.self, forKey: .ratting)
		review = try values.decodeIfPresent(String.self, forKey: .review)
		review_reply = try values.decodeIfPresent(String.self, forKey: .review_reply)
		created = try values.decodeIfPresent(String.self, forKey: .created)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		first_name = try values.decodeIfPresent(String.self, forKey: .first_name)
		last_name = try values.decodeIfPresent(String.self, forKey: .last_name)
		profile_image_url = try values.decodeIfPresent(String.self, forKey: .profile_image_url)
		following = try values.decodeIfPresent(String.self, forKey: .following)
	}

}
