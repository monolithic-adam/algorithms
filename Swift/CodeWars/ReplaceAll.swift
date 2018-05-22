//Replace All

func replaceAll<T: Equatable>(array: [T], old: T, new: T) -> [T] {
    return array.flatMap { $0 == old ? new : $0 }
}
