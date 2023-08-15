defmodule Dijkstra do
  def shortest_path(graph, start_node) do
    vertices = Map.keys(graph)
    distances = Enum.map(vertices, &{&1, :infinity}) |> Enum.into(%{start_node => 0})
    previous = Enum.map(vertices, &{&1, nil}) |> Enum.into(%{})
    queue = PriorityQueue.new()

    queue = PriorityQueue.insert(queue, {0, start_node})

    process_queue(queue, graph, distances, previous)
  end

  defp process_queue(queue, graph, distances, previous) when PriorityQueue.is_empty?(queue) do
    {distances, previous}
  end

  defp process_queue(queue, graph, distances, previous) do
    {{priority, vertex}, queue} = PriorityQueue.pop(queue)
    neighbors = Map.get(graph, vertex, [])

    neighbors
    |> Enum.reduce({distances, previous, queue}, fn {neighbor, weight}, {d, p, q} ->
      alt = d[vertex] + weight

      if alt < (d[neighbor] || :infinity) do
        d = %{d | neighbor => alt}
        p = %{p | neighbor => vertex}
        q = PriorityQueue.insert(q, {alt, neighbor})
        {d, p, q}
      else
        {d, p, q}
      end
    end)
    |> process_queue(graph)
  end
end
