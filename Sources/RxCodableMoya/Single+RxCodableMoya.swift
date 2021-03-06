import Foundation
import Moya
import RxSwift

#if !COCOAPODS
import RxCodable
#endif

public extension PrimitiveSequenceType where TraitType == SingleTrait, ElementType == Moya.Response {
  public func map<T>(_ type: T.Type, using decoder: JSONDecoder? = nil) -> PrimitiveSequence<TraitType, T> where T: Decodable {
    return self
      .map { response in response.data }
      .map(type, using: decoder)
  }
}
