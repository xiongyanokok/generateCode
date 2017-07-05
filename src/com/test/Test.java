/**
 * Date:2015-10-27上午11:15:35
 * Copyright (c) 2015, www.bwbroad.com All Rights Reserved.
 *
*/

package com.test;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Description: TODO <br/>
 * Date:     2015-10-27 上午11:15:35 <br/>
 * @author   xuejianxin	 
 */
public class Test {

	/**
	 * Description:TODO<br/>
	 * Date: 2015-10-27 上午11:15:35 <br/>
	
	 * @author xuejianxin
	 * @param args
	 */
	public static void main(String[] args) {
		StringBuilder text = new StringBuilder("<p>这不仅仅是一场演唱会<br />更是一部再见青春的史诗<br />是一段永远存在于心的爱</p><p style=\"text-align:center;\"><img width=\"300\" height=\"403\" border=\"0\" hspace=\"0\" vspace=\"0\" title=\"汪峰\" style=\"border:0px;color:#333333;font-family:verdana, arial, tahoma, simsun, 宋体;line-height:18px;background-color:#ffffff;width:300px;height:403px;\" /><br style=\"color:#333333;font-family:verdana, arial, tahoma, simsun, 宋体;line-height:18px;background-color:#ffffff;\" />汪峰<br /></p><p style=\"text-align:center;\"><br /></p><p style=\"text-align:center;\">存在 汪峰演唱会<br /></p><p style=\"text-indent:2em;\">他是桀骜不驯的音乐使者，他是继崔健之后的中国摇滚教父，他颠覆了摇滚的概念，他是最受争议也最流行的摇滚歌手，他是市场与艺术最令人羡慕的坐标。一个用音乐说话的思想者—他是汪峰。</p><p style=\"text-indent:2em;\">他那极具理念的歌词真实地反映了“复杂而简单”的内心世界，更是引起了人们的强烈反响和评论界的关注，从而把自己推到了中国严肃摇滚的先锋地位。汪峰——如同一道眩目的光芒点亮中国摇滚界，独自闪耀、独自精彩。他音乐的张力和大气，听得出生命的力量。文字的朴素和犀利，又解释了生命根本的脆弱。一场激情、精彩、感动的音乐盛宴即将上演！功成名就之后的汪峰，以最摇滚的精神，宣告了他在音乐上最彻底的回归—回归摇滚，回归内心。有多少年不曾流泪？有多少歌给你安慰？每一首歌曲的创意都将与众不同。聆听汪峰述说灿烂年华中的迷惘与解放、内敛与张扬。15年摇滚生涯，15年生命积淀，15年梦想坚持—汪峰将用他极具穿透力的声音、带你感悟生命、追逐梦想！</p><p style=\"text-align:center;\"><img width=\"300\" height=\"402\" border=\"0\" hspace=\"0\" vspace=\"0\" title=\"汪峰\" style=\"border:0px;color:#333333;font-family:verdana, arial, tahoma, simsun, 宋体;line-height:18px;background-color:#ffffff;width:300px;height:402px;\" /><br style=\"color:#333333;font-family:verdana, arial, tahoma, simsun, 宋体;line-height:18px;background-color:#ffffff;\" />汪峰<br /></p><p style=\"text-indent:2em;\">就像他歌中所写——我在这里欢笑，我在这里哭泣；我在这里活着，也在这儿死去；我在这里祈祷，我在这里迷惘；我在这里寻找，也在这儿失去。他的歌是对人们意识的唤醒，每首歌都充满对生命的热恋。从一个人、一个城市、一个国家、一个世界、一个时代，从友情到爱情，再至人间的大爱，生命的美好由此展现。他的哲学中充满思辨的味道，他的思想深邃却不故作深沉。他用敏感的心去体悟社会，关注社会，再用原创音乐去诠释社会。</p><p style=\"text-indent:2em;\">2013年，摇滚精神即将再度起航，让我们一起挥洒，一起摇滚，一起用音乐寻迹生命！中国之崛起，摇滚中国之雄起！从汪峰开始，期待中国！你准备好了吗？</p><p style=\"text-align:center;\"><img src=\"http://static.228.cn/upload/Image/201301/1357378874348_497.jpg\" width=\"300\" height=\"396\" border=\"0\" hspace=\"0\" vspace=\"0\" title=\"汪峰演唱会\" style=\"border:0px;color:#666666;font-family:verdana, arial, tahoma, simsun, 宋体;line-height:23px;text-indent:24px;background-color:#ffffff;width:300px;height:396px;float:none;\" /><br style=\"color:#666666;font-family:verdana, arial, tahoma, simsun, 宋体;line-height:23px;text-indent:24px;background-color:#ffffff;\" />汪峰演唱会<br /></p><p>2013汪峰西安演唱会敬请期待！</p>a) 演出详情仅供参考，具体信息以现场为准；<br/> b)1.2米以下儿童谢绝入场，1.2米以上儿童需持票入场。"); //("<p>这不仅仅是一场演唱会<br />更是一部再见青春的史诗<br />是一段永远存在于心的爱</p><p style=\"text-align:center;\"><img src=\"http://static.228.cn/upload/Image/201301/1357379210571_2923.jpg\" width=\"300\" height=\"403\" border=\"0\" hspace=\"0\" vspace=\"0\" title=\"汪峰\" style=\"border:0px;color:#333333;font-family:verdana, arial, tahoma, simsun, 宋体;line-height:18px;background-color:#ffffff;width:300px;height:403px;\" /><br style=\"color:#333333;font-family:verdana, arial, tahoma, simsun, 宋体;line-height:18px;background-color:#ffffff;\" />汪峰<br /></p><p style=\"text-align:center;\"><br /></p><p style=\"text-align:center;\">存在 汪峰演唱会<br /></p><p style=\"text-indent:2em;\">他是桀骜不驯的音乐使者，他是继崔健之后的中国摇滚教父，他颠覆了摇滚的概念，他是最受争议也最流行的摇滚歌手，他是市场与艺术最令人羡慕的坐标。一个用音乐说话的思想者—他是汪峰。</p><p style=\"text-indent:2em;\">他那极具理念的歌词真实地反映了“复杂而简单”的内心世界，更是引起了人们的强烈反响和评论界的关注，从而把自己推到了中国严肃摇滚的先锋地位。汪峰——如同一道眩目的光芒点亮中国摇滚界，独自闪耀、独自精彩。他音乐的张力和大气，听得出生命的力量。文字的朴素和犀利，又解释了生命根本的脆弱。一场激情、精彩、感动的音乐盛宴即将上演！功成名就之后的汪峰，以最摇滚的精神，宣告了他在音乐上最彻底的回归—回归摇滚，回归内心。有多少年不曾流泪？有多少歌给你安慰？每一首歌曲的创意都将与众不同。聆听汪峰述说灿烂年华中的迷惘与解放、内敛与张扬。15年摇滚生涯，15年生命积淀，15年梦想坚持—汪峰将用他极具穿透力的声音、带你感悟生命、追逐梦想！</p><p style=\"text-align:center;\"><img src=\"http://static.228.cn/upload/Image/201301/1357378594759_5849.jpg\" width=\"300\" height=\"402\" border=\"0\" hspace=\"0\" vspace=\"0\" title=\"汪峰\" style=\"border:0px;color:#333333;font-family:verdana, arial, tahoma, simsun, 宋体;line-height:18px;background-color:#ffffff;width:300px;height:402px;\" /><br style=\"color:#333333;font-family:verdana, arial, tahoma, simsun, 宋体;line-height:18px;background-color:#ffffff;\" />汪峰<br /></p><p style=\"text-indent:2em;\">就像他歌中所写——我在这里欢笑，我在这里哭泣；我在这里活着，也在这儿死去；我在这里祈祷，我在这里迷惘；我在这里寻找，也在这儿失去。他的歌是对人们意识的唤醒，每首歌都充满对生命的热恋。从一个人、一个城市、一个国家、一个世界、一个时代，从友情到爱情，再至人间的大爱，生命的美好由此展现。他的哲学中充满思辨的味道，他的思想深邃却不故作深沉。他用敏感的心去体悟社会，关注社会，再用原创音乐去诠释社会。</p><p style=\"text-indent:2em;\">2013年，摇滚精神即将再度起航，让我们一起挥洒，一起摇滚，一起用音乐寻迹生命！中国之崛起，摇滚中国之雄起！从汪峰开始，期待中国！你准备好了吗？</p><p style=\"text-align:center;\"><img src=\"http://static.228.cn/upload/Image/201301/1357378874348_497.jpg\" width=\"300\" height=\"396\" border=\"0\" hspace=\"0\" vspace=\"0\" title=\"汪峰演唱会\" style=\"border:0px;color:#666666;font-family:verdana, arial, tahoma, simsun, 宋体;line-height:23px;text-indent:24px;background-color:#ffffff;width:300px;height:396px;float:none;\" /><br style=\"color:#666666;font-family:verdana, arial, tahoma, simsun, 宋体;line-height:23px;text-indent:24px;background-color:#ffffff;\" />汪峰演唱会<br /></p><p>2013汪峰西安演唱会敬请期待！</p>a) 演出详情仅供参考，具体信息以现场为准；<br/> b)1.2米以下儿童谢绝入场，1.2米以上儿童需持票入场。");
		Pattern pattern = Pattern.compile("src=\"([^\"]+)\"");
        Matcher matcher = pattern.matcher(text);
        while(matcher.find()) {
        	String url = matcher.group(1);
        	System.out.println(url);
        	int start = text.indexOf(url);
        	int l = url.length();
        	System.out.println(text.length()+"--"+start+"--"+l);
        	System.out.println(text);
        	text.replace(start, start+l, "x");
        }
        System.out.println(text);

	}

}

