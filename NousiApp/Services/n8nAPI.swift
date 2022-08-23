//
//  n8nAPI.swift
//  NousiApp
//
//  Created by Caio Soares on 22/08/22.
//

import Foundation

enum n8n_error: Error {
    case n8n_invalidServerResponse
}

class API_N8N {
    
    static func fetchIndexes() async -> [Index] {
        
        let requestURL = n8n_cloud_development_index
        
        print("DEBUG: Iniciando fetch dos indexes.")
        
        do {
            let (data, _) = try await URLSession.shared.data(from: requestURL)
            let decodedResponse = try JSONDecoder().decode([Index].self, from: data)
            
            print("DEBUG: Fetch nos indexes concluido")
            
            return decodedResponse
        } catch {
            print("DEBUG: Erro retornado no fetch dos indexes")
        }
        return []
    }
    
    static func fetchTeamChoice() async -> [TeamChoice] {

        let requestURL = n8n_cloud_development_teamChoice
        
        print("DEBUG: Iniciando fetch das escolhas da equipe")
        
        do {
            let (data, _) = try await URLSession.shared.data(from: requestURL)
            let decodedResponse = try JSONDecoder().decode([TeamChoice].self, from: data)
            
            print("DEBUG: Fetch das escolhas da equipe concluido")
            
            return decodedResponse
        } catch {
            print("DEBUG: Erro retornado no fetch das escolhas")
        }
        return []
    }
}
