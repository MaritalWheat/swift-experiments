//
//  FactBook.swift
//  FunFacts
//
//  Created by Emanuel Rosu on 7/25/15.
//  Copyright (c) 2015 Emanuel Rosu. All rights reserved.
//

import Foundation

struct Factbook {
    let factsArray = [
        "Banging your head against a wall burns 150 calories an hour.",
        "In the UK, it is illegal to eat mince pies on Christmas Day!",
        "Pteronophobia is the fear of being tickled by feathers!",
        "When hippos are upset, their sweat turns red.",
        "A flock of crows is known as a murder.",
        "“Facebook Addiction Disorder” is a mental disorder identified by Psychologists.",
        "The average woman uses her height in lipstick every 5 years.",
        "29th May is officially “Put a Pillow on Your Fridge Day“.",
        "Cherophobia is the fear of fun.",
        "Human saliva has a boiling point three times that of regular water.",
        "If you lift a kangaroo’s tail off the ground it can’t hop.",
        "Hyphephilia are people who get aroused by touching fabrics.",
        "Billy goats urinate on their own heads to smell more attractive to females.",
        "The person who invented the Frisbee was cremated and made into frisbees after he died!",
        "During your lifetime, you will produce enough saliva to fill two swimming pools.",
        "An eagle can kill a young deer and fly away with it.",
        "Polar bears can eat as many as 86 penguins in a single sitting.",
        "King Henry VIII slept with a gigantic axe beside him.",
        "Bikinis and tampons invented by men.",
        "Heart attacks are more likely to happen on a Monday.",
        "If you consistently fart for 6 years & 9 months, enough gas is produced to create the energy of an atomic bomb!",
        "An average person’s yearly fast food intake will contain 12 pubic hairs.",
        "The top six foods that make your fart are beans, corn, bell peppers, cauliflower, cabbage and milk!",
        "There is a species of spider called the Hobo Spider.",
        "A toaster uses almost half as much energy as a full-sized oven.",
        "A baby spider is called a spiderling.",
        "You cannot snore and dream at the same time.",
        "The following can be read forward and backwards: Do geese see God?",
        "A baby octopus is about the size of a flea when it is born.",
        "A sheep, a duck and a rooster were the first passengers in a hot air balloon.",
        "In Uganda, 50% of the population is under 15 years of age."]
    
    func randomFact() -> String {
        var randomNumber = Int(arc4random_uniform(UInt32(factsArray.count)))
        return factsArray[randomNumber]
    }
}