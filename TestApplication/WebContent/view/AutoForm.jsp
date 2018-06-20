
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Bootstrap Autocomplete Textbox Example without using Typehead.js</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<link rel = "Stylesheet" href = "https://twitter.github.io/typeahead.js/css/examples.css"></link>
<script type="text/javascript">
$(function () {
$('#txtSearch').keyup(function () {
$.ajax({
url: "BootstrapAutoComplete.aspx/GetAutoCompleteData",
data: "{'username':'" + $('#txtSearch').val() + "'}",
dataType: "json",
type: "POST",
contentType: "application/json; charset=utf-8",
success: function (data) {
var val = '<ul id="userlist">';
$.map(data.d, function (item) {
var itemval = item.split('/')[0];
val += '<li class=tt-suggestion>' + itemval + '</li>'
})
val += '</ul>'
$('#divautocomplete').show();
$('#divautocomplete').html(val);
$('#userlist li').click(function () {
$('#txtSearch').val($(this).text());
$('#divautocomplete').hide();
})
},
error: function (response) {
alert(response.responseText);
}
});
})
$(document).mouseup(function (e) {
var closediv = $("#divautocomplete");
if (closediv.has(e.target).length == 0) {
closediv.hide();
}
});
});
</script>
<style type="text/css">
ul li
{
list-style: none;
}
</style>
</head>
<body>
<form id="form1" runat="server">
<div style="position: absolute;left: 18%; z-index: 100; text-align:left;">
<input type="text" class="typeahead" id="txtSearch" placeholder="Type username to search" autocomplete="off" />
<div id="divautocomplete" class="tt-menu" style="display:none">
</div>
</div>
</form>
</body>
</html>