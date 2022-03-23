import 'package:endesha_groceries/helpers/app_colors.dart';
import 'package:endesha_groceries/helpers/iconhelper.dart';
import 'package:endesha_groceries/helpers/utils.dart';
import 'package:endesha_groceries/models/onboarding_content.dart';
import 'package:endesha_groceries/pages/category_list_page.dart';
import 'package:endesha_groceries/widgets/iconfont.dart';
import 'package:endesha_groceries/widgets/main_app_bar.dart';
import 'package:endesha_groceries/widgets/theme_buttons.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List<OnBoardingContent> _content = Utils.getOnboarding();
  int pageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    pageIndex = page;
                  });
                },
                children: List.generate(
                  _content.length,
                  (index) => Container(
                    padding: const EdgeInsets.all(40.0),
                    margin: const EdgeInsets.only(
                      left: 40,
                      right: 40,
                      top: 40,
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.MAIN_COLOR.withOpacity(0.3),
                            blurRadius: 20,
                            offset: Offset.zero,
                          )
                        ]),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: IconFont(
                                  color: AppColors.MAIN_COLOR,
                                  size: 40,
                                  iconName: IconFontHelper.LOGO,
                                ),
                              ),
                              Image.asset(
                                'assets/images/${_content[index].image}.png',
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                _content[index].message,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.MAIN_COLOR,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: index == _content.length - 1,
                          child: ThemeButton(
                            label: "Entrar Ahora",
                            onClick: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => CategoryListPage()),
                                (Route<dynamic> route) => false,
                              );
                            },
                            icon: const Icon(
                              Icons.access_time,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _content.length,
                (index) => GestureDetector(
                  onTap: () {
                    _pageController.animateTo(
                      MediaQuery.of(context).size.width * index,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.MAIN_COLOR,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        width: 6,
                        color: pageIndex == index
                            ? Color(0XFF7E57C2)
                            : Theme.of(context).canvasColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ThemeButton(
              label: "Saltar Onboarding",
              onClick: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => CategoryListPage()),
                  (Route<dynamic> route) => false,
                );
              },
              icon: const Icon(
                Icons.next_plan,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
