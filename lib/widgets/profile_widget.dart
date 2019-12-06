import 'package:baas_study/icons/font_icon.dart';
import 'package:baas_study/pages/system_setting_page.dart';
import 'package:baas_study/routes/router.dart';
import 'package:flutter/material.dart';
import 'custom_list_tile.dart';
import 'grid_group.dart';

/// Grid布局导航
class ProfileGridGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridNav(
      height: 90,
      children: <Widget>[
        GridItem(
          icon: FontIcons.note,
          text: '课程',
          iconColor: Color(0xff3f98eb),
          onTab: () {
            print('课程');
          },
        ),
        GridItem(
          icon: FontIcons.wallet,
          text: '钱包',
          iconColor: Color(0xffff5a00),
          onTab: () {
            print('钱包');
          },
        ),
        GridItem(
          icon: Icons.favorite,
          text: '收藏',
          iconColor: Color(0xffff2121),
          onTab: () {
            print('收藏');
          },
        )
      ],
    );
  }
}

/// 最近在学 - 我的考试 ListTile
class ProfileStudyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTileGroup(
      top: 20,
      children: <Widget>[
        ListTileCustom(
          leading: FontIcons.time,
          leadingTitle: '最近在学',
          color: Color(0xff3f98eb),
        ),
        ListTileCustom(
          leading: FontIcons.paper,
          leadingTitle: '我的考试',
          color: Color(0xffff2121),
        ),
      ],
    );
  }
}

/// 账户余额 ListTile
class ProfileBalanceInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTileGroup(
      top: 20,
      bottom: 20,
      children: <Widget>[
        ListTileCustom(
          leading: FontIcons.coin,
          leadingTitle: '账户余额',
          trailingTitle: '10045.6',
          color: Color(0xffffdf0c),
        ),
      ],
    );
  }
}

/// 邀请好友 - 反馈建议 - 设置 ListTile
class ProfileAccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTileGroup(
      children: <Widget>[
        ListTileCustom(
          leading: FontIcons.invite,
          leadingTitle: '邀请好友',
          color: Color(0xffff2121),
        ),
        ListTileCustom(
          leading: FontIcons.feedback,
          leadingTitle: '反馈建议',
          color: Color(0xff00f6d0),
        ),
        ListTileCustom(
          leading: Icons.settings,
          leadingTitle: '系统设置',
          color: Color(0xff3f98eb),
          onTab: () {
            Navigator.push(context, SlideRoute(SystemSettingPage()));
          },
        ),
      ],
    );
  }
}