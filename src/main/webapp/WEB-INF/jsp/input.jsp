<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>お問い合わせフォーム</h1>
		
		<form action="/contact/confirm" method="post">
		
			<p>
				名前<br>
				<input type="text" name="name">
			</p>
			
			<p>
				メールアドレス<br>
				<input type="email" name="email_address">
			</p>
			
			<p>
				性別<br>
				<input type="radio" name="sex" value="man" >男
				<input type="radio" name="sex" value="woman" >女<br>
			</p>
			
			<p>
				お問い合わせ種別<br>
				<input type="checkbox" name="cates" value="seihin">製品について
				<input type="checkbox" name="cates" value="sa-bis">サービスについて
				<input type="checkbox" name="cates" value="saiyou">採用について
				<input type="checkbox" name="cates" value="sonota">その他
			</p>	
				
			<div>
				住所<br>
				<select name="pref">
				  <option value="北海道">北海道</option>
				  <option value="東北">東北</option>
				  <option value="関東">関東</option>
				  <option value="中部">中部</option>
				  <option value="近畿">近畿</option>
				  <option value="中国">中国</option>
				  <option value="四国">四国</option>
				  <option value="九州">九州</option>
				</select><br>
			 </div>
			 
			 <p>
			 	お問い合わせ内容<br>
			 	<textarea name = "msg" rows="5" cols="50">入力欄</textarea><br>
			 </p>
			
			 <p>
				<button type="submit">確認画面へ</button>
			 </p>
		
		</form>
	</body>

</html>