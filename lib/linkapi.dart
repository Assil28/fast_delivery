class LinkApi {
  // ce file contient les APIs du backend

  static const String serveur = "http://localhost/ecommerce_Kmandi/delivery";

//Images
  static const String imagestatic = "http://localhost/ecommerce_Kmandi/upload";
  static const String imagesCategories = "$imagestatic/categories ";
  static const String imagesItems = "$imagestatic/items ";
/*-------------------------*/

  static const String test = "$serveur/test.php";

  // Notification
  static const String notification = "$serveur/notification.php";

  // Auth Links
  static const String resend = "$serveur/auth/resend.php";

  static const String login = "$serveur/auth/login.php";

  // Forget Password
  static const String checkEmail = "$serveur/forgetpassword/checkemail.php";
  static const String verifyCodeForgetPassword =
      "$serveur/forgetpassword/verifycode.php";
  static const String resetPassword =
      "$serveur/forgetpassword/resetpassword.php";

  //Home
  static const String homepage = "$serveur/home.php";

  // Adress Client

  static const String addressView = "$serveur/address/view.php";
  static const String addressAdd = "$serveur/address/add.php";
  static const String addressEdit = "$serveur/address/edit.php";
  static const String addressDelete = "$serveur/address/delete.php";

// orders

  static const String viewpendingorders =
      "$serveur/orders/pending.php"; //les commande que je peux accpter pour livrer

  static const String aprouveorders =
      "$serveur/orders/approve.php"; //  accpeter un ordre pour le livrer

  static const String viewaccpetedorders =
      "$serveur/orders/accepted.php"; // les commandes l acceptithom
  static const String archiveorders =
      "$serveur/orders/archive.php"; // les commandes l c'est livrithom

  static const String detailsorders = "$serveur/orders/details.php";

  // Delivery 
   static const String doneorder= "$serveur/orders/done.php";
}
