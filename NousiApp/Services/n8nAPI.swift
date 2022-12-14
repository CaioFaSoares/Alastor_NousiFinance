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

class n8nAPI {
    
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
            print(error)
        }
        return []
    }
    
    static func fetchPosts() async -> [BlogPost] {

        let requestURL = n8n_cloud_development_blogPost
        
        print("DEBUG: Iniciando fetch dos posts")
        
        do {
            let (data, _) = try await URLSession.shared.data(from: requestURL)
            let decodedResponse = try JSONDecoder().decode([BlogPost].self, from: data)
            
            print("DEBUG: Fetch dos posts concluido")
            
            return decodedResponse
        } catch {
            print(error)
        }
        return []
    }
    
    static func fetchVideosAN() async -> [VideoAndrey] {
        
        let requestURL = n8n_cloud_development_video_an
        
        print("DEBUG: Iniciando fetch dos posts")
        
        do {
            let (data, _) = try await URLSession.shared.data(from: requestURL)
            let decodedResponse = try JSONDecoder().decode([VideoAndrey].self, from: data)
            
            print("DEBUG: Fetch dos posts concluido")
            
            return decodedResponse
        } catch {
            print(error)
        }
        return []
        
    }
    
    static func fetchVideosNF() async -> [VideoNF] {
        
        let requestURL = n8n_cloud_development_video_nf
        
        print("DEBUG: Iniciando fetch dos posts")
        
        do {
            let (data, _) = try await URLSession.shared.data(from: requestURL)
            let decodedResponse = try JSONDecoder().decode([VideoNF].self, from: data)
            
            print("DEBUG: Fetch dos posts concluido")
            
            return decodedResponse
        } catch {
            print(error)
        }
        return []
        
    }
    
}
