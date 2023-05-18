<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <form action="" method="post">
        <label for="email">Email</label>
        <input type="text" id="email">
        <input type="button" class="btn btn-success" value="enviar" onclick="validarcorreo(form.email.value)">
    </form>
    <script>
        function validarcorreo(email){
            var expReg= /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/;
            var esvalido= expReg.test(email);
            if(esvalido==true){
                alert('El email es valido')
            }else{
                alert('El email no es valido')
            }
        }
    </script>
</body>
</html>