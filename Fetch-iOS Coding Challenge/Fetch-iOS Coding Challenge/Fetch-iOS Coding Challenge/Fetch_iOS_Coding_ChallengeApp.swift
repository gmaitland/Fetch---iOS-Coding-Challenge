//
//  Fetch_iOS_Coding_ChallengeApp.swift
//  Fetch-iOS Coding Challenge
//
//  Created by Ivy on 26/06/23.
//

import Foundation

// Create a function to fetch the meals
func fetchDessertMeals() {
    // Create the URL object with the API endpoint
    guard let URL = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert") else {
        print("Invalid URL")
        return
    }
}
    
// Create a function to fetch meal details by ID
func fetchMealDetails(mealID: String) {
    // Construct the URL with the provided meal ID
    guard let url = URL(string: "https://themealdb.com/api/json/v1/1/lookup.php?i=\(mealID)") else {
        print("Invalid URL")
        return
    }
    
    // Create the URLSession
    let session = URLSession.shared
    
    // Create the data task for the GET request
    let task = session.dataTask(with: url) { (data, response, error) in
        // Check for any errors
        if let error = error {
            print("Error: \(error.localizedDescription)")
            return
        }
    }
}
