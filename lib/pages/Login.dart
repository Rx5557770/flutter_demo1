import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  // 定义控制器
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //
  Widget _contentWidget() {
    return Container(
      child: Column(
        children: [
          Text(
            "账号密码登录",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          TextField(
            controller: usernameController,
            decoration: InputDecoration(
              hintText: "请输入账号",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(height: 15),
          TextField(
            obscureText: true,
            controller: passwordController,
            decoration: InputDecoration(
              hintText: "请输入密码",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(height: 15),

          ElevatedButton(
            onPressed: () {
              print('点击登录');
            },
            child: Text("登录", style: TextStyle(color: Colors.white)),
            style: ButtonStyle(
              minimumSize: WidgetStateProperty.all(Size(250, 55)),
              backgroundColor: WidgetStateProperty.all(Colors.black),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {
                print("点击忘记密码");
              },
              child: Text("忘记密码？", style: TextStyle(color: Colors.blue)),
            ),
          ),

          // 底部
          Container(
            margin: EdgeInsets.only(top: 75),
            child: Column(
              children: [
                Text("其他登录方式"),
                SizedBox(height: 25),
                IconButton(
                  onPressed: () {
                    print("点击qq登录");
                  },
                  icon: Image.asset(
                    "lib/assets/qq_icon.png",
                    width: 25,
                    height: 25,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text("登录")),
      body: Container(
        width: size.width,
        padding: EdgeInsets.all(15),
        child: Column(children: [_contentWidget()]),
      ),
    );
  }
}
