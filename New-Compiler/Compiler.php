<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="https://codemirror.net/lib/codemirror.css">
	<script type="text/javascript" src="https://codemirror.net/lib/codemirror.js"></script>
	<script  type="text/javascript" src="https://codemirror.net/mode/xml/xml.js"></script>
	<script  type="text/javascript" src="https://codemirror.net/mode/css/css.js"></script>
	<script  type="text/javascript" src="https://codemirror.net/mode/javascript/javascript.js"></script>

	<link rel="stylesheet" type="text/css" href="Compiler.css">
</head>
<body>

	<div class="header">
	<a href="index.php"><img src="logo2.png" style="width: 200px; float:left"></a> 
		<button id="run-btn">Run</button>
	</div>
	<div class="editor">
		<div class="code">
			<div class="html-code"><h1>HTML</h1></div>
			<div class="css-code"><h1>CSS</h1></div>
			<div class="js-code"><h1>JavaScript</h1></div>
		</div>
		<div class="preview">
			<iframe id="preview-window"></iframe>
		</div>
	</div>

	<script type="text/javascript" src="code.js"></script>
</body>
</html>