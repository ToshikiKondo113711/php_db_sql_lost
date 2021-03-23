<?php
//入力データの確認
if(
    !isset($_POST['productName'])||$_POST['productName']==''||
    !isset($_POST['price'])||$_POST['price']==''||
    !isset($_POST['itemSubject'])||$_POST['itemSubject']==''||
    !isset($_POST['description'])||$_POST['description']==''||
    !isset($_POST['janCode'])||$_POST['janCode']==''
)
{
    exit('ParamError');
}

//1. POSTデータ取得

//まず前のphpからデーターを受け取る（この受け取ったデータをもとにbindValueと結びつけるため）
$productName = $_POST["productName"];
$price = $_POST["price"];
$itemSubject = $_POST["itemSubject"];
$description = $_POST["description"];
$janCode = $_POST["janCode"];

//2. DB接続します xxxにDB名を入力する
//ここから作成したDBに接続をしてデータを登録します xxxxに作成したデータベース名を書きます
// mamppの方は
// $pdo = new PDO('mysql:dbname=xxx;charset=utf8;host=localhost', 'root', 'root');

try {
    $pdo = new PDO('mysql:dbname=php02_db;charset=utf8;host=localhost', 'root', '');
} catch (PDOException $e) {
    exit('DbConnectError:'.$e->getMessage());
}


//３．データ登録SQL作成 //ここにカラム名を入力する
//xxx_table(テーブル名)はテーブル名を入力します
$sql="INSERT INTO shouhin_touroku(id, productName, price,description,itemSubject,janCode,indate )VALUES(NULL, :productName, :price, :description
,:itemSubject ,:janCode,sysdate())";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':productName', $productName, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':price', $price, PDO::PARAM_INT);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':description', $description, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':itemSubject', $itemSubject, PDO::PARAM_STR); 
$stmt->bindValue(':janCode', $janCode, PDO::PARAM_INT); 
$status = $stmt->execute();

//４．データ登録処理後
if ($status==false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmt->errorInfo();
    exit("QueryError:".$error[2]);
} else {
    //５．index.phpへリダイレクト 書くときにLocation: in この:　のあとは半角スペースがいるので注意！！
    header("Location: index.php");
    exit;
}
