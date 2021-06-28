<?php
    $language = strtolower($_POST['language']);
    $code = $_POST['code'];

    $random = substr(md5(mt_rand()), 0, 7);
    $filePath = "temp/" . $random . "." . $language;
    $programFile = fopen($filePath, "w");
    fwrite($programFile, $code);
    fclose($programFile);

    if($language == "html") {
        $output = shell_exec("src\php\temp\html\html.html $filePath 2>&1");
        echo $output;
    }
    if($language == "css") {
        $output = shell_exec("src\php\temp\css\css.css $filePath 2>&1");
        echo $output;
    }
    if($language == "java") {
        rename($filePath, $filePath.".js");
        $output = shell_exec("java $filePath.java 2>&1");
        echo $output;
    }
    if($language == "c") {
        $outputExe = $random . ".exe";
        shell_exec("gcc $filePath -o $outputExe");
        $output = shell_exec(__DIR__ . "//$outputExe");
        echo $output;
    }
    if($language == "cpp") {
        $outputExe = $random . ".exe";
        shell_exec("g++ $filePath -o $outputExe");
        $output = shell_exec(__DIR__ . "//$outputExe");
        echo $output;
    }