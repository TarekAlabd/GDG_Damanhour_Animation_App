import 'package:company_profile/repos/repo.dart';
import 'package:flutter/material.dart';

import 'company_profile_page.dart';

class CompanyProfileAnimator extends StatefulWidget {
  @override
  _CompanyProfileAnimatorState createState() => _CompanyProfileAnimatorState();
}

class _CompanyProfileAnimatorState extends State<CompanyProfileAnimator> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000),
        vsync: this);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompanyProfilePage(
      company: RepoData.gdgDamanhour,
      controller: _controller,);
  }
}
