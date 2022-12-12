import UIKit

// EJERCICIO 1:

var primes: [Int] = []

var counter = 0
for i in 2...600 {
    for number in 1...i where i % number == 0 {
        counter += 1
    }
    if !(counter > 2) && primes.count < 100 {
        primes.append(i)
    }
    counter = 0
}
print(primes)
print("The last 10 prime numbers are: \(primes[90...])")

// EJERCICIO 2:

let sumPrimes = primes[0...49]
let sum = sumPrimes.reduce(0, +)
print("The addition of the first 50 prime numbers is: \(sum)")

// EJERCICIO 3:
var players: [String] = ["Vinicius", "Messi", "Ronaldo", "Pedri", "Mbappe", "Modric", "Militao", "Morata", "Valverde", "Benzema", "Piqué"]

var playersFiltered: [String] = []

func vocals()  -> [String] {
    var count = 0
    for i in players {
        for char in i where char == "a" || char == "e" || char == "i" || char == "o" || char == "u"  {
            count += 1
        }
        if count > 2 {
            playersFiltered.append(i)
        }
        count = 0
    }
    return playersFiltered
    
}
print("The players with more than two vocals in their names are: \(vocals())")
    
// EJERCICIO 4:

enum PlayersPosition {
    case goalkeeper
    case forward
    case middleForward
    case midfielder
    case rightWinger
    case leftWinger
    case defender
    case centerBack
}

// EJERCICIO 5:

class WorldCupMember {
    var name: String = ""
    var lastname: String = ""
    var country: String = ""
    var role: Role
    
    init (name: String = "", lastname: String = "", country: String = "", role: Role){
        self.name = name
        self.lastname = lastname
        self.country = country
        self.role = role
}
    
enum Role {
    case player
    case coach
    case medicalTeam
    case assistant
    case referee
    case linesMan
}

    var member: WorldCupMember = WorldCupMember(role: WorldCupMember.Role.coach)
}
// EJERCICIO 6:

struct WorldCup {
    var footballTeam: [Team]
}
    
    
class Player {
    var name: String = ""
    var lastname: String = ""
    
    
    init (name: String = "", lastname: String = "" ) {
    }
}
    
class Team {
    var country: String = ""
    var players: Player
    var coach: String = ""
    var points: Int = 0
    
    init(country: String = "", players: Player, coach: String = "", points: Int = 0) {
        self.country = country
        self.players = players
        self.coach = coach
        self.points = points
    }
    
}
    
var spain = Team (country: "Spain", players: Player (name: "Alvaro", lastname: "Morata"), coach: "Luis Enrique", points: 0)
var morocco = Team (country: "Morocco", players: Player (name: "", lastname: ""), coach: "", points: 0)
var france = Team (country: "Francia", players: Player (name: "", lastname: ""), coach: "", points: 0)
var england = Team (country: "Inglaterra", players: Player (name: "", lastname: ""), coach: "", points: 0)
var germany = Team (country: "Germany", players: Player(name: "", lastname: ""), coach: "")
var italy = Team (country: "Italy", players: Player(), coach: "")
var qatar = Team (country: "Qatar", players: Player(), coach: "")
var australia = Team (country: "Australia", players: Player(), coach: "")
var argentina = Team (country: "Argentina", players: Player(), coach: "", points: 0)
var switzerland = Team (country: "Switzerland", players: Player(), coach: "")
var uruguay = Team (country: "Uruguay", players: Player(), coach: "")
var unitedStates = Team(country: "United States", players: Player())
var saudiArabia = Team(country: "Saudi Arabia", players: Player())
var ghana = Team(country: "Ghana", players: Player())
var wales = Team(country: "Wales", players: Player())
var costaRica = Team(country: "Costa Rica", players: Player())
    
    
//EJERCICIO 7:

class Match {
    let localTeam: String
    let visitorTeam: String
    
    
    init(localTeam: String, visitorTeam: String) {
        self.localTeam = localTeam
        self.visitorTeam = visitorTeam
    }
}

var teamsList = ["Spain", "Morocco", "France", "England", "Germany", "Italy", "Qatar", "Australia", "Argentina", "Switzerland", "Uruguay", "United States", "Saudi Arabia", "Ghana", "Wales", "Costa Rica"]

var teamsEmpty: [String] = []
    
for _ in teamsList {
    var resultLocal = Int.random(in: 0...10)
    var resultVisit = Int.random(in: 0...10)
    var localTeam = teamsList.randomElement()!
    var visitorTeam = teamsList.randomElement()!
    //teamsList.removeLast(2)
    print("Game: \(localTeam): \(resultLocal) - \(visitorTeam) \(resultVisit)")
}

//EJERCICIO 8:

class Group {
    var name: String
    let localTeam: String
    let localTeamPoints: Int
    let visitorTeam: String
    var visitorTeamPoints: Int
   
    init(name: String, localTeam: String, localTeamPoints: Int, visitorTeam: String, visitorTeamPoints: Int) {
        self.name = name
        self.localTeam = localTeam
        self.localTeamPoints = localTeamPoints
        self.visitorTeam = visitorTeam
        self.visitorTeamPoints = visitorTeamPoints
        
        
    }
}

var group1 = Group(name: "A", localTeam: teamsList.randomElement()!, localTeamPoints: 3, visitorTeam: teamsList.randomElement()!, visitorTeamPoints: 0)

teamsList.removeLast(2)
var group2 = Group(name: "B", localTeam: teamsList.randomElement()!, localTeamPoints: 0, visitorTeam: teamsList.randomElement()!, visitorTeamPoints: 3)

teamsList.removeLast(2)
var group3 = Group(name: "C", localTeam: teamsList.randomElement()!, localTeamPoints: 1, visitorTeam: teamsList.randomElement()!, visitorTeamPoints: 1)
var group4 = Group(name: "D", localTeam: teamsList.randomElement()!, localTeamPoints: 3, visitorTeam: teamsList.randomElement()!, visitorTeamPoints: 0)


//Probando otras maneras:

var groupA: [String] = []

for _ in teamsList {
    var team1 = teamsList.randomElement()!
    groupA.append(team1)
    teamsList.removeLast()
    if groupA.count > 3 {
        teamsList.removeLast(3)
        break
        }
    }

        
//EJERCICIO 9 y 10:


var match1 = Group(name: "a", localTeam: "Argentina", localTeamPoints: 0, visitorTeam: "Spain", visitorTeamPoints: 3)

argentina.points += 3
spain.points += 2

var match2 = Group(name: "a", localTeam: "Morocco", localTeamPoints: 1, visitorTeam: "Portugal", visitorTeamPoints: 1)

germany.points += 1
morocco.points += 1

var match3 = Group(name: "a", localTeam: "England", localTeamPoints: 0, visitorTeam: "Spain", visitorTeamPoints: 3)
spain.points += 3
england.points += 0
var match4 = Group(name: "a", localTeam: "England", localTeamPoints: 0, visitorTeam: "Argentina", visitorTeamPoints: 3)
england.points += 0
argentina.points += 3

//func getPoints(equipo: Team.Type) -> Int {
 //   return equipo.points
//Probé varias cosas y no me salía y me quedé sin tiempo

//getPoints(equipo: morocco)

var points: [Int] = [spain.points, england.points, argentina.points]

var winners: [String] = []

var spanishPoints = spain.points
var germanPoints = germany.points
var englandPoints = england.points

if spanishPoints > germanPoints || spanishPoints > englandPoints {
    winners.append("Spain")
}; if germanPoints > spanishPoints || germanPoints > englandPoints {
        winners.append("Germany")
} else if englandPoints > spanishPoints || englandPoints > germanPoints {
    winners.append("England") }



print("The classified in group A are: \(winners)")

// He tenido que poner pocos ejemplos en los ejercicios por la falta de tiempo
