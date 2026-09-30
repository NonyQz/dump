--注销账户相关
--主要为做超链接的文本而加的配置lua

--&nbsp;空格  约占1/4个汉字位置

local delete_account = {}

--指引界面文本
delete_account.guide_text =[[       <p align="left" valign="middle"><font size=22 color=#562d0e face = "default" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;尊敬的用戶，在您正式開始下一步有關本遊戲的遊戲帳號註銷流程前，請您務必詳細閱讀並同意<a href="#ECTextItemComponent#open_url:http://bbs.g.qq.com/forum.php?mod=forumdisplay&fid=56861&ADTAG=game.app.llyt:《遊戲帳號註銷協議》"><font color=#3eff00><u>《遊戲帳號註銷協議》</u></font></a>（以下統稱“本協議”）。您按照我們的註銷操作流程開始註銷流程的，或您勾選本協議並點擊下一步操作的，即視為您已經同意和遵守本協議全部內容。我們在此特別提示您：</font></p>
    <br />
       <p align="left" valign="middle"><font size=22 color=#562d0e face = "default" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;註銷本遊戲遊戲帳號後，除法律法規或本協議另有規定外，您在該遊戲帳號下的個人資訊將進行刪除或匿名化處理，您將無法再檢索、訪問、獲取、繼續使用和找回，也無權要求我們找回個人資訊，前述個人資訊包括但不限於：頭像、昵稱、戰鬥力、購買或遊戲中獲得的虛擬道具或虛擬物品、發言、地區、遊戲中的聊天記錄等內容。</font></p>
    <br />
       <p align="left" valign="middle"><font size=22 color=#562d0e face = "default" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;註銷操作成功發起後，您的帳號將進入<font color=#ff0000>註銷冷靜期</font>，冷靜期時長15天。冷靜期內，您可以通過再次登錄處於冷靜期內的帳號撤銷註銷操作，冷靜期結束後，您的帳號將被註銷，註銷前的帳號數據將無法找回。</font></p>
    <br />
       <p align="left" valign="middle"><font size=22 color=#562d0e face = "default" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有關遊戲帳號註銷的其他詳細規則及注意事項，請您點擊並查看要繼續帳號註銷操作，請您詳細閱讀<a href="#ECTextItemComponent#open_url:http://bbs.g.qq.com/forum.php?mod=forumdisplay&fid=56861&ADTAG=game.app.llyt:《遊戲帳號註銷協議》"><font color=#3eff00><u>《遊戲帳號註銷協議》</u></font></a>。</font></p>
    ]]


--提示界面文本
--不知道为什么</u>前老显示不够长，补了一个字符，最后显示不出来？
delete_account.confirm_text = [[<p align="left" valign="middle"><effect name="shadow"><font size=22 color=#FFFFFF face = "default" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;要繼續帳號註銷操作，請您詳細閱讀<a href="#ECTextItemComponent#open_url:http://bbs.g.qq.com/forum.php?mod=forumdisplay&fid=56861&ADTAG=game.app.llyt:《遊戲帳號註銷協議》"><font color=#3eff00><u>《遊戲帳號註銷協議》</u></font></a>,並勾選左下方選項，進行確認。</font></effect></p>]]


return delete_account