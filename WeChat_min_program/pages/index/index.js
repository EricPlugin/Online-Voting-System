//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    motto: 'Hello World',
    userInfo: {},
    hasUserInfo: false,
    canIUse: wx.canIUse('button.open-type.getUserInfo'),
    confrontation_id:0,
    player_1_name:"111",
    player_2_name:"222"
  },
  onReady: function () {
      console.log(11111)
  },
  add_player_1_vote: function (event) {
   
  },
  add_player_2_vote: function (event) {
   
  }
})
