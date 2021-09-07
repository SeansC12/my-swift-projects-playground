public class Rng {
    public init() {}
    
    public func randomize(startno : Int, endno : Int) -> Int { //function creates a random number for actual number
        let randomno = Int.random(in: startno...endno)
        
        return randomno
    }
    
    public func rngFindingClueMethod() -> Int { //function finds what method the clue is expressed
        let randomno = Int.random(in: 1...2)
        
        return randomno
    }
}
