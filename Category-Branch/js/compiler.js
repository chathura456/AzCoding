let editor;

window.onload = function() {
    editor = ace.edit("editor");
    editor.setTheme("ace/theme/monokai");
    editor.session.setMode("ace/mode/c_cpp");
}

function changeLanguage() {

    let language = $("#languages").val();

    if(language == 'c' || language == 'cpp')editor.session.setMode("ace/mode/c_cpp");
    else if(language == 'html')editor.session.setMode("ace/mode/html");
    else if(language == 'css')editor.session.setMode("ace/mode/css");
    else if(language == 'java')editor.session.setMode("ace/mode/java");
}

function executeCode() {

    $.ajax({

        url: "/src/php/compiler.php",

        method: "POST",

        data: {
            language: $("#languages").val(),
            code: editor.getSession().getValue()
        },

        success: function(response) {
            $(".output").text(response)
        }
    })
}