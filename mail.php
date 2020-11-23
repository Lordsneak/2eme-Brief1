<?php
    // Import PHPMailer classes into the global namespace
    // These must be at the top of your script, not inside a function
    use PHPMailer\PHPMailer\PHPMailer;
    // use PHPMailer\PHPMailer\SMTP;
    use PHPMailer\PHPMailer\Exception;

    // Load Composer's autoloader
    require 'vendor/autoload.php';

    // Instantiation and passing `true` enables exceptions
    $mail = new PHPMailer(true);

    try {
        // Get data from user
        $nomplate = $_POST['plate'];
        $prenom = $_POST['prenom'];
        $nom = $_POST['nom'];
        $telephone = $_POST['telephone'];
        $zone = $_POST['zone'];

        //Server settings
        // $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      // Enable verbose debug output
        $mail->isSMTP();                                            // Send using SMTP
        $mail->Host       = 'tls://smtp.gmail.com';                    // Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
        $mail->Username   = 'Hamza1ghounbaz@gmail.com';                     // SMTP username
        $mail->Password   = '';                               // SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
        $mail->Port       = 587; // 465                                 // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

        //Recipients
        $mail->setFrom('Hamza1ghounbaz@gmail.com');
        $mail->addAddress('Hamza1ghounbaz@gmail.com');     // Add a recipient
       
        // Content
        $mail->isHTML(true);                                  // Set email format to HTML
        $mail->Subject = 'A New Sale From ' . $prenom . " " . $nom;
        $mail->Body    = 'You have a new sale you can send your sale to customer at <b>' . $nomplate . '</b> <br> Adresse : '.$zone.' <br> <br>Call him to know more details at ' . $telephone;
        // $mail->AltBody = 'Customer Phone Number: ' . $phoneNumber;

        if($mail->send()){
            echo 'Message has been sent';
        }else{
            echo 'Message did not sent';
        }
    } catch (Exception $e) {
        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }
    

    