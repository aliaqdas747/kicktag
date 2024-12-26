import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/Folder%20Structured/Authentication/register.dart';

import 'package:kuicktag/constants/app_colors.dart';

import 'package:kuicktag/widgets/custombuttonwidget.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  State<LanguageSelectionScreen> createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  // This will be used for the search functionality
  TextEditingController searchController = TextEditingController();

  // List of available languages and their corresponding flags
  final List<Map<String, String>> languages = [
    {'flag': '🇬🇧', 'name': 'English'},
    {'flag': '🇮🇹', 'name': 'Italian'},
    {'flag': '🇨🇳', 'name': 'Chinese'},
    {'flag': '🇫🇷', 'name': 'French'},
    {'flag': '🇩🇪', 'name': 'German'},
    {'flag': '🇪🇸', 'name': 'Spanish'},
    {'flag': '🇷🇺', 'name': 'Russian'},
  ];

  String selectedLanguage = 'English'; // Default language

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
                  borderRadius: BorderRadius.circular(6.0))),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 16,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              height: 40,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Wrap everything inside SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose the language',
                style: GoogleFonts.outfit(
                    color: AppColors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              Text(
                "Choose Your Preferred Language",
                style: GoogleFonts.outfit(
                    color: const Color(0xFF9D9D9D),
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: GoogleFonts.outfit(
                      color: AppColors.black2.withOpacity(0.5)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: const Color(0XFF3C3C43).withOpacity(0.6),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFD8DADC)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFD8DADC),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFD8DADC)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap:
                    true, // Important to avoid overflow and allow ListView to scroll within the SingleChildScrollView
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  final language = languages[index];
                  final isSelected = selectedLanguage == language['name'];
                  return Container(
                    decoration: BoxDecoration(
                      border: isSelected
                          ? Border.all(color: const Color(0xFFD8DADC))
                          : null,
                      borderRadius: BorderRadius.circular(10),
                      color: isSelected
                          ? const Color.fromARGB(255, 233, 244, 255)
                          : Colors.transparent,
                    ),
                    child: ListTile(
                      selectedTileColor: Colors.grey[200],
                      leading: Text(
                        language['flag'] ?? '',
                        style: const TextStyle(fontSize: 25),
                      ),
                      title: Text(
                        language['name'] ?? '',
                        style: GoogleFonts.outfit(
                            fontSize: 16,
                            color: AppColors.black.withOpacity(0.7)),
                      ),
                      trailing: selectedLanguage == language['name']
                          ? const Icon(Icons.check_circle,
                              color: Color(0xFF87CEEB))
                          : null,
                      onTap: () {
                        setState(() {
                          selectedLanguage = language['name'] ?? '';
                        });
                      },
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              CustomButtonWidget(
                  title: 'Continue',
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()),
                      )),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
