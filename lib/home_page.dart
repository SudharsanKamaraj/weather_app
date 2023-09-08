import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/home_controller.dart';
import 'package:weather_app/data/api/api_client.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = Get.put(HomeController(apiClient: ApiClient()));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.home();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
          child: GetBuilder<HomeController>(
            builder: (context) {
              final dailyData = homeController.weatherData.value.timelines?.daily;

              if (dailyData != null) {
                return Container(
                  height: Get.height * 0.05,
                  width: Get.width * 0.08,
                  color: Colors.lightBlueAccent,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: dailyData.length,
                    itemBuilder: (context, index) {
                      final data = dailyData[index];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(data.values.cloudBase?.toString() ?? '-'),
                          Text(data.values.cloudBase?.toString() ?? '-'),
                          Text(data.values.cloudCover?.toString() ?? '-'),
                          Text(data.values.dewPoint?.toString() ?? '-'),
                          Text(data.values.uvIndex?.toString() ?? '-'),
                          Text(data.values.freezingRainIntensity?.toString() ?? '-'),
                          Text(data.values.pressureSurfaceLevel?.toString() ?? '-'),
                          Text(data.values.windGust?.toString() ?? '-'),
                        ],
                      );
                    },
                  ),
                );
              } else {
                // Handle the case where dailyData is null (e.g., show a loading indicator or an error message).
                return const Center(child: CircularProgressIndicator()); // Example loading indicator
              }
            },
          ),
      ),
    );
  }
}
