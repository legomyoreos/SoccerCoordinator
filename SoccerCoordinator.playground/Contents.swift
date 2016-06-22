//////////////////////////
/// INDIVIDUAL PLAYERS ///
//////////////////////////

var joeSmith: [String: String] = [
    "name": "Joe Smith",
    "height": "42",
    "experience": "YES",
    "guardian": "Jim and Jan Smith"
]

var jillTanner: [String: String] = [
    "name": "Jill Tanner",
    "height": "36",
    "experience": "YES",
    "guardian": "Clara Tanner"
]

var billBon: [String: String] = [
    "name": "Bill Bon",
    "height": "43",
    "experience": "YES",
    "guardian": "Sara and Jenny Bon"
]

var evaGordon: [String: String] = [
    "name": "Eva Gordan",
    "height": "45",
    "experience": "NO",
    "guardian": "Wendy and Mike Gordan"
]

var mattGill: [String: String] = [
    "name": "Matt Gill",
    "height": "40",
    "experience": "NO",
    "guardian": "Charles and Sylvia Gill"
]

var kimmyStein: [String: String] = [
    "name": "Kimmy Stein",
    "height": "41",
    "experience": "NO",
    "guardian": "Bill and Hillary Stein"
]

var sammyAdams: [String: String] = [
    "name": "Sammy Adams",
    "height": "45",
    "experience": "NO",
    "guardian": "Jeff Adams"
]

var karlSaygan: [String: String] = [
    "name": "Karl Saygan",
    "height": "42",
    "experience": "YES",
    "guardian": "Heather Bledsoe"
]

var suzaneGreenberg: [String: String] = [
    "name": "Suzane Greenberg",
    "height": "44",
    "experience": "YES",
    "guardian": "Henrietta Dumas"
]

var salDali: [String: String] = [
    "name": "Sal Dali",
    "height": "41",
    "experience": "NO",
    "guardian": "Gala Dali"
]

var joeKavalier: [String: String] = [
    "name": "Joe Kavalier",
    "height": "39",
    "experience": "NO",
    "guardian": "Sam and Elaine Kavalier"
]

var benFinkelstein: [String: String] = [
    "name": "Ben Finkelstein",
    "height": "44",
    "experience": "NO",
    "guardian": "Aaron and Kill Finkletstein"
]

var diegoSoto: [String: String] = [
    "name": "Diego Soto",
    "height": "41",
    "experience": "YES",
    "guardian": "Robin and Sarika Soto"
]

var chloeAlaska: [String: String] = [
    "name": "Chloe Alaska",
    "height": "47",
    "experience": "NO",
    "guardian": "David and Jamie Alaska"
]

var arnoldWillis: [String: String] = [
    "name": "Arnold Willis",
    "height": "43",
    "experience": "NO",
    "guardian": "Claire Willis"
]

var phillipHelm: [String: String] = [
    "name": "Phillip Helm",
    "height": "44",
    "experience": "YES",
    "guardian": "Thomas Helm and Eva Jones"
]

var lesClay: [String: String] = [
    "name": "Les Clay",
    "height": "42",
    "experience": "YES",
    "guardian": "Wynonna Brown"
]

var herschelKrustofski: [String: String] = [
    "name": "Herschel Krustofski",
    "height": "45",
    "experience": "YES",
    "guardian": "Hyman and Rachel Krustofski"
]

//////////////////////////
///// ENTIRE ROSTER //////
//////////////////////////

var playerRoster: [[String: String]] = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]


//////////////////////////
///////// TEAMS //////////
//////////////////////////

var teamDragon: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []


// Accessing Player Experience
    // Placing in even teams

for experiencedPlayer in playerRoster {
    if experiencedPlayer["experience"] == "YES" {
        if teamDragon.count < teamSharks.count {
            teamDragon.append(experiencedPlayer)
        } else if teamSharks.count < teamRaptors.count {
            teamSharks.append(experiencedPlayer)
        } else {
            teamRaptors.append(experiencedPlayer)
        }
    }
}

for inexperiencedPlayer in playerRoster {
    if inexperiencedPlayer["experience"] == "NO" {
        if teamDragon.count < teamSharks.count {
            teamDragon.append(inexperiencedPlayer)
        } else if teamSharks.count < teamRaptors.count {
            teamSharks.append(inexperiencedPlayer)
        } else {
            teamRaptors.append(inexperiencedPlayer)
        }
    }
}

//print(teamDragon)
//print(teamSharks)
//print(teamRaptors)


//////////////////////////
// PERSONALIZED LETTERS //
//////////////////////////

// Researched on Stack Overflow why my print statements said Optional("Sara and Jenny Bon") instead of just printing the names when using string interpolation. Suggested I use ! to get rid of it.

for player in teamDragon {
    print("Hello, \(player["guardian"]!). This letter is to inform you that \(player["name"]!) has been placed in Team Dragon! Please make sure that \(player["name"]!) attends the first team practice on March 17th at 1pm. Thank you! Enjoy the season.")
}

for player in teamSharks {
    print("Hello, \(player["guardian"]!). This letter is to inform you that \(player["name"]!) has been placed in Team Sharks! Please make sure that \(player["name"]!) attends the first team practice on March 17th at 3pm. Thank you! Enjoy the season.")
}

for player in teamRaptors {
    print("Hello, \(player["guardian"]!). This letter is to inform you that \(player["name"]!) has been placed in Team Raptors! Please make sure that \(player["name"]!) attends the first team practice on March 18th at 1pm. Thank you! Enjoy the season.")
}


















