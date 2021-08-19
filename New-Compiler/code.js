const htmlEditor = CodeMirror(document.querySelector(".editor .code .html-code"),{
	lineNumbers:true,
	tabSize:3,
	mode:"html-mixed"
});
const cssEditor = CodeMirror(document.querySelector(".editor .code .css-code"),{
	lineNumbers:true,
	tabSize:3,
	mode:"css"
});
const jsEditor = CodeMirror(document.querySelector(".editor .code .js-code"),{
	lineNumbers:true,
	tabSize:3,
	mode:"javascript"
});

document.querySelector("#run-btn").addEventListener("click",function(){
	let htmlCode = htmlEditor.getValue();
	let cssCode = "<style>" + cssEditor.getValue() + "</style>";
	let jsCode = "<scri" + "pt>" + jsEditor.getValue() + "</scri" + "pt>";
	let clikeCode = clikeEditor.getValue();
	let previewWindow = document.querySelector("#preview-window").contentWindow.document;
	previewWindow.open();
	previewWindow.write(htmlCode+cssCode+jsCode+clikeCode);
	previewWindow.close();
});