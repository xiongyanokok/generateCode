function testajax() {
	$.ajax({
		url : $root+'/demo/ajaxtest.do',
		data : {},
		type : 'POST',
		success : function(result) {
			alert(result.msg);
		}
	});
}