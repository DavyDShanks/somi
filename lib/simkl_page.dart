import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';

// API Key in params : 8ff394ee978ea259ca1765a89b0479b9
// API Key in header : eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4ZmYzOTRlZTk3OGVhMjU5Y2ExNzY1YTg5YjA0NzliOSIsIm5iZiI6MTc1Nzc0MDMwMi40ODcsInN1YiI6IjY4YzRmZDBlMGQ2NzE4Y2VlMjRjYTEzNyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.3aNdDc7rCd1lQ9LmwOh7jV7fxbcYeDazsucw99yReRk

class SimklPage extends StatefulWidget {
  const SimklPage({super.key});

  @override
  State<SimklPage> createState() => _SimklPageState();
}

class _SimklPageState extends State<SimklPage> {

  List trending = [];

  @override
  void initState() {
    super.initState();
    fetchTrending();
  }

  Future<void> fetchTrending() async {
    final response = await http.get(
      Uri.parse("https://api.themoviedb.org/3/trending/all/day"),
      headers: {
        "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4ZmYzOTRlZTk3OGVhMjU5Y2ExNzY1YTg5YjA0NzliOSIsIm5iZiI6MTc1Nzc0MDMwMi40ODcsInN1YiI6IjY4YzRmZDBlMGQ2NzE4Y2VlMjRjYTEzNyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.3aNdDc7rCd1lQ9LmwOh7jV7fxbcYeDazsucw99yReRk"
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        trending = data["results"];
      });
    } else {
      throw Exception("Failed to load trending");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/simkl_logo.png", color: Colors.white, height: 25),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.png"),
              radius: 15,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: trending.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Trending",
                      style: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.white)),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 200,
                    child: ListView.separated(
                      
                      scrollDirection: Axis.horizontal,
                      itemCount: trending.length,
                      itemBuilder: (context, index) {
                        final item = trending[index];
                        final posterPath = item["poster_path"];
                        return InkWell(
                          onTap: () {
                            print("Clicked on ${item["title"] ?? item["name"] ?? "Unknown"}");
                          },
                          child: Container(
                            width: 120,
                            margin: const EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                posterPath != null
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          
                                          "https://image.tmdb.org/t/p/w200$posterPath",
                                          fit: BoxFit.cover,
                                          height: 160,
                                        ),
                                      )
                                    : Container(
                                        height: 160,
                                        color: Colors.grey,
                                        child: const Center(
                                          child: Icon(Icons.movie,
                                              color: Colors.white),
                                        ),
                                      ),
                                const SizedBox(height: 5),
                                Text(
                                  item["title"] ??
                                      item["name"] ??
                                      "Unknown",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}