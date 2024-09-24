struct Creature{
    var name: String
    var description: String
    var isGood: Bool
    var magicPower: Int
    
    init(name: String, description: String, isGood: Bool, magicPower: Int) {
        self.name = name
        self.description = description
        self.isGood = isGood
        self.magicPower = magicPower
    }
    
    // comp property
    var ability: String
    {
        get{
            return "\(self.name) special ability is \(fibonacciAbility(n: magicPower))"
        }
    }
    
    //Interaction of Creatures.
    func interactWith(anotherInstance: Creature) -> String {
        var isGoodAnotherInstance: Bool = anotherInstance.isGood
        var isGoodPresentInstance: Bool = self.isGood
        switch (isGoodPresentInstance, isGoodAnotherInstance) {
        case (true, true):
            return "Interaction of \(self.name) and \(anotherInstance.name) is Good Vs Good"
        case (true, false ):
            return "Interaction of \(self.name) and \(anotherInstance.name) is Good Vs Evil"
            
        case (false, true):
            return "Interaction of \(self.name) and \(anotherInstance.name) is Evil Vs Good"
        case (false, false):
            return "Interaction of \(self.name) and \(anotherInstance.name) is Evil Vs Evil"
        }
    }
}


var creature1 = Creature(name: "Unicorn", description: "legendary white horse with a pointed horn", isGood: true, magicPower: 50)
var creature2 = Creature(name: "Dragon", description: "Mythical fire emitting flying beast", isGood: false, magicPower: 100)
var creature3 = Creature(name: "Phoenix", description: "a mythical bird that symbolizes immortality", isGood: true, magicPower: 150)

func fibonacciAbility(n: Int) -> Int {
    if n < 2 {
        return n
    }
    return fibonacciAbility(n: n-1) + fibonacciAbility(n: n-2)
    
}

var creatureCatalog: [Creature] = [creature1, creature2, creature3]

func describeCreature (_ creatureCatalog: [Creature]) {
    
    for creature in 0...2{
        print(creatureCatalog[creature].name + " Description: "+creatureCatalog[creature].description + " and " + creatureCatalog[creature].ability)
        
    
        print(creatureCatalog[creature].interactWith(anotherInstance: creatureCatalog[(creature + 1) % 3]))
        print(creatureCatalog[creature].interactWith(anotherInstance: creatureCatalog[(creature + 2) % 3]))
        
    }
}
describeCreature(creatureCatalog)
