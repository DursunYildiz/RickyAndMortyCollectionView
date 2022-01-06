//
//  CellViewModel.swift
//  RickyAndMorty
//
//  Created by A101Mac on 6.01.2022.
//

import Foundation
import UIKit

class CellViewModel {
    let characters: [CellModel] = [CellModel(name: "Rick Sanchez", image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg", gender: "Male", species: "Human", status: "Alive"),
                                   CellModel(name: "Morty Smith", image: "https://rickandmortyapi.com/api/character/avatar/2.jpeg", gender: "Male", species: "Human", status: "Alive"),
                                   CellModel(name: "Summer Smith", image: "https://rickandmortyapi.com/api/character/avatar/3.jpeg", gender: "Female", species: "Human", status: "Alive"),
                                   CellModel(name: "Beth Smith", image: "https://rickandmortyapi.com/api/character/avatar/4.jpeg", gender: "Female", species: "Human", status: "Alive"),
                                   CellModel(name: "Jerry Smith", image: "https://rickandmortyapi.com/api/character/avatar/5.jpeg", gender: "Male", species: "Human", status: "Alive"),
                                   
                                   CellModel(name: "Abradolf Lincler", image: "https://rickandmortyapi.com/api/character/avatar/7.jpeg", gender: "Male", species: "Human", status: "unknown"),
                                   CellModel(name: "Adjudicator Rick", image: "https://rickandmortyapi.com/api/character/avatar/8.jpeg", gender: "Male", species: "Human", status: "Dead"),
                                   CellModel(name: "Agency Director", image: "https://rickandmortyapi.com/api/character/avatar/9.jpeg", gender: "Male", species: "Human", status: "Dead"),
                                   CellModel(name: "Alan Rails", image: "https://rickandmortyapi.com/api/character/avatar/10.jpeg", gender: "Male", species: "Human", status: "Dead"),
                                   CellModel(name: "Albert Einstein", image: "https://rickandmortyapi.com/api/character/avatar/11.jpeg", gender: "Male", species: "Human", status: "Dead"),
                                   CellModel(name: "Alexander", image: "https://rickandmortyapi.com/api/character/avatar/12.jpeg", gender: "Male", species: "Human", status: "Dead"),
                                   CellModel(name: "Alien Googah", image: "https://rickandmortyapi.com/api/character/avatar/13.jpeg", gender: "unknown", species: "Alien", status: "unknown")]
  
}
