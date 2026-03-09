<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="/contact-form/css/style.css">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>お問い合わせフォーム</h1>
		<%--↓プロジェクト名マスト --%>
		<form action="/contact-form/contact/confirm" method="post">
		
			<p>
				<strong>名前</strong><br>
				<input type="text" name="name">
			</p>
			
			<p>
				<strong>メールアドレス</strong><br>
				<input type="email" name="email_address">
			</p>
			
			<p>
				<strong>性別</strong><br>
				<input type="radio" name="sex" value="man" >男
				<input type="radio" name="sex" value="woman" >女<br>
			</p>
			
			<p>
				<strong>お問い合わせ種別</strong><br>
				<input type="checkbox" name="cates" value="seihin">製品について
				<input type="checkbox" name="cates" value="sa-bis">サービスについて
				<input type="checkbox" name="cates" value="saiyou">採用について
				<input type="checkbox" name="cates" value="sonota">その他
			</p>	
				
			<div>
				<strong>住所</strong><br>
				<select name="pref">
				  <option value="北海道">北海道</option>
				  <option value="東北">東北</option>
				  <option value="関東">関東</option>
				  <option value="中部">中部</option>
				  <option value="近畿">近畿</option>
				  <option value="中国">中国</option>
				  <option value="四国">四国</option>
				  <option value="九州">九州</option>
				  <option value="沖縄">沖縄</option>
				</select><br>
			 </div>
			 
			 <p>
			 	<strong>お問い合わせ内容</strong><br>
			 	<textarea name = "msg" rows="5" cols="50">入力欄</textarea><br>
			 </p>
			
			 <p>
				<button type="submit">確認画面へ</button>
			 </p>
		
		</form>
	</body>
</html>