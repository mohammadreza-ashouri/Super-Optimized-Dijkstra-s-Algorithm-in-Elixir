# Super Optimized Dijkstra's Algorithm in Elixir

This repository implements Dijkstra's algorithm optimized for finding the shortest paths in a knowledge graph. Utilizing a priority queue, this version of the algorithm achieves improved efficiency, making it highly suitable for knowledge graph applications.

## Complexity Analysis

### Time Complexity

The time complexity of this implementation is \(O((E + V) \log V)\), where \(E\) is the number of edges and \(V\) is the number of vertices in the graph.

### Space Complexity

The space complexity is \(O(V + E)\) for storing the graph, distances, and previous vertices.

## Why It's Cool for Knowledge Graph Applications

Knowledge graphs represent relationships between various entities and concepts. Navigating through these relationships efficiently is vital for many applications such as recommendation engines, semantic search, and natural language understanding.

1. **Efficient Navigation**: Utilizing a priority queue, this implementation quickly finds the shortest paths, enabling swift navigation through complex knowledge structures.
2. **Scalable**: The optimized space and time complexity make this implementation suitable for large-scale graphs, a common feature in knowledge-driven domains.
3. **Versatile**: It can be adapted to various types of knowledge representations, making it a flexible solution for different applications.

## Usage

The main function, `Dijkstra.shortest_path/2`, takes a graph represented as an adjacency map and a start node, and returns the shortest distances and previous nodes for all reachable nodes.

```elixir
graph = %{a: [{b, 1}, {c, 4}], b: [{c, 2}], c: []}
Dijkstra.shortest_path(graph, :a)

```


## About the Author
Mo Ashouri

Email: ashourics@gmail.com

Website: https://ashoury.net
Mo Ashouri is a software developer and researcher passionate about algorithms, data structures, and knowledge graphs. This implementation reflects his commitment to delivering optimized solutions for complex problems.

## License
This project is licensed under the MIT License.
