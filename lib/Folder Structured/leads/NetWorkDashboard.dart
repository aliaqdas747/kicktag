import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/constants/app_colors.dart';

class NetWorkDashboard extends StatefulWidget {
  const NetWorkDashboard({super.key});

  @override
  State<NetWorkDashboard> createState() => _LeadsScreenState();
}

class _LeadsScreenState extends State<NetWorkDashboard>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 4, vsync: this); // Adjust length to match the number of tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.bgcolor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          style: IconButton.styleFrom(
            minimumSize: const Size(29, 29),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Color(0xFFD8DADC)),
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 16,
          ),
        ),
        title: Text(
          'Network Dashboard',
          style: GoogleFonts.outfit(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Search Field
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,
                          color: const Color(0xFF3C3C43).withOpacity(0.6)),
                      hintText: 'Search',
                      hintStyle: GoogleFonts.outfit(
                        color: Colors.black.withOpacity(0.5),
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Color(0xFFD8DADC)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Color(0xFFD8DADC)),
                      ),
                      suffixIcon: Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF87CEEB),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Icon(Icons.tune_outlined,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Tab Bar
          SizedBox(
            width: double.infinity,
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(
                  text: "Connections",
                ),
                Tab(text: "Requests"),
                Tab(text: "Lead"),
                Tab(text: "Inbox"),
              ],
            ),
          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Connections View
                ListView.builder(
                  itemCount: connections.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                      title: Text(
                        connections[index].name,
                        style: GoogleFonts.outfit(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black2,
                        ),
                      ),
                      subtitle: Text(
                        connections[index].jobTitle,
                        style: GoogleFonts.outfit(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF767676),
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            connections[index].status,
                            style: GoogleFonts.outfit(
                                color: AppColors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(width: 4),
                          IconButton(
                              style: IconButton.styleFrom(
                                  shape: CircleBorder(
                                      side: BorderSide(
                                          color: const Color(0xFFB5B5B6)
                                              .withOpacity(0.4)))),
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward))
                        ],
                      ),
                      onTap: () {
                        // Navigate to details or perform an action
                      },
                    );
                  },
                ),

                // Requests View
                ListView.builder(
                  itemCount: requests.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                      title: Text(
                        requests[index].name,
                        style: GoogleFonts.outfit(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black2,
                        ),
                      ),
                      subtitle: Text(
                        requests[index].jobTitle,
                        style: GoogleFonts.outfit(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF767676),
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            requests[index].status,
                            style: GoogleFonts.outfit(
                                color: AppColors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(width: 4),
                          IconButton(
                              style: IconButton.styleFrom(
                                  shape: CircleBorder(
                                      side: BorderSide(
                                          color: const Color(0xFFB5B5B6)
                                              .withOpacity(0.4)))),
                              onPressed: () {},
                              icon: const Icon(Icons.check))
                        ],
                      ),
                      onTap: () {
                        // Navigate to details or perform an action
                      },
                    );
                  },
                ),

                // Lead View
                ListView.builder(
                  itemCount: leads.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                      title: Text(
                        leads[index].name,
                        style: GoogleFonts.outfit(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black2,
                        ),
                      ),
                      subtitle: Text(
                        leads[index].jobTitle,
                        style: GoogleFonts.outfit(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF767676),
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            leads[index].distance,
                            style: GoogleFonts.outfit(
                                color: AppColors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(width: 4),
                          IconButton(
                              style: IconButton.styleFrom(
                                  shape: CircleBorder(
                                      side: BorderSide(
                                          color: const Color(0xFFB5B5B6)
                                              .withOpacity(0.4)))),
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward))
                        ],
                      ),
                      onTap: () {
                        // Navigate to details or perform an action
                      },
                    );
                  },
                ),

                // Inbox View
                const Center(child: Text("Inbox View")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Sample data for connections and requests
final List<Connection> connections = [
  Connection(
      name: "John Doe",
      jobTitle: "Business owner at transition",
      status: "Connected"),
  Connection(
      name: "Jane Smith",
      jobTitle: "Business owner at transition",
      status: "Pending"),
  Connection(
      name: "Jane Smith",
      jobTitle: "Business owner at transition",
      status: "Reached out"),
  Connection(
      name: "Jane Smith",
      jobTitle: "Business owner at transition",
      status: "Pending"),
  Connection(
      name: "Jane Smith",
      jobTitle: "Business owner at transition",
      status: "Pending"),
  Connection(
      name: "Jane Smith",
      jobTitle: "Business owner at transition",
      status: "Reached out"),
  Connection(
      name: "Jane Smith",
      jobTitle: "Business owner at transition",
      status: "Pending"),
];

final List<Request> requests = [
  Request(
      name: "Alice Johnson", jobTitle: "Designer", status: "Accept request"),
  Request(name: "Bob Brown", jobTitle: "Developer", status: "Accept request"),
  Request(name: "Bob Brown", jobTitle: "Developer", status: "Accept request"),
  Request(name: "Bob Brown", jobTitle: "Developer", status: "Accept request"),
  Request(name: "Bob Brown", jobTitle: "Developer", status: "Accept request"),
  Request(name: "Bob Brown", jobTitle: "Developer", status: "Accept request"),
  Request(name: "Bob Brown", jobTitle: "Developer", status: "Accept request"),
];

final List<Leads_> leads = [
  Leads_(name: 'Sarah Khan', jobTitle: 'Graphic Designer', distance: '5 km'),
  Leads_(name: 'Usman Ahmed', jobTitle: 'Software Engineer', distance: '12 km'),
  Leads_(name: 'Hina Tariq', jobTitle: 'Content Writer', distance: '8 km'),
  Leads_(name: 'Ali Zafar', jobTitle: 'Digital Marketer', distance: '10 km'),
  Leads_(name: 'Ayesha Malik', jobTitle: 'Data Analyst', distance: '7 km'),
  Leads_(name: 'Kamran Saeed', jobTitle: 'UI/UX Designer', distance: '15 km'),
  Leads_(name: 'Sana Javed', jobTitle: 'Mobile Developer', distance: '20 km'),
  Leads_(name: 'Bilal Khan', jobTitle: 'Network Engineer', distance: '3 km'),
  Leads_(name: 'Mariam Saleem', jobTitle: 'HR Manager', distance: '18 km'),
  Leads_(name: 'Omar Qureshi', jobTitle: 'SEO Specialist', distance: '25 km'),
  Leads_(name: 'Faizan Sheikh', jobTitle: 'Backend Developer', distance: '6 km'),
  Leads_(name: 'Zara Ali', jobTitle: 'Project Manager', distance: '14 km'),


];


class Connection {
  final String name;
  final String jobTitle;
  final String status;

  Connection(
      {required this.name, required this.jobTitle, required this.status});
}

class Request {
  final String name;
  final String jobTitle;
  final String status;

  Request({required this.name, required this.jobTitle, required this.status});
}


class Leads_ {
  final String name;
  final String jobTitle;
  final String distance;

  Leads_({required this.name, required this.jobTitle, required this.distance});
}