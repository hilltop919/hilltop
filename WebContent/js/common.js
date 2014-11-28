function convertToUpperCase(o) {
	document.getElementById(o.id).value = document.getElementById(o.id).value
			.toUpperCase();
}



/** 2013-6-17 单选列,单个值的获取方法 */
function getTrObjsValueForSingleValue(trObjsArr) {
	if (trObjsArr == null || trObjsArr.length == 0)
		return '';
	var str = '';
	for (var i = 0; i < trObjsArr.length; i++) {
		var tdChilds = trObjsArr[i].getElementsByTagName('TD');
		for (var j = 0; j < tdChilds.length; j++) {
			var name = tdChilds[j].getAttribute('name');// 获取当前列对应的<col/>的列名
			var value = tdChilds[j].getAttribute('value');// 获取选中行的当前列的数据
			if (name && name != '') {
				str = str + value;
			}
		}
	}
	return str;
}

/** 2013-6-20 刷新page */
function refreshPage(datasObj) {
	refreshComponentDisplay(datasObj.pageid, null, true);// 刷新整个page
}
/**
 * url 目标url(http://www.baidu.com/) arg 需要替换的参数名称 arg_val 替换后的参数的值 return url
 * 参数替换后的url
 */
function changeURLArg(url, arg, arg_val) {
	var pattern = arg + '=([^&]*)';
	var replaceText = arg + '=' + arg_val;
	if (url.match(pattern)) {
		var tmp = '/(' + arg + '=)([^&]*)/gi';
		tmp = url.replace(eval(tmp), replaceText);
		return tmp;
	} else {
		if (url.match('[\?]')) {
			return url + '&' + replaceText;
		} else {
			return url + '?' + replaceText;
		}
	}
	return url + '\n' + arg + '\n' + arg_val;
}
/** 正则分析法 获取字符串中参数 */
function getSubString(str, key) {
	// string="&name=123&no=456"
	var reg = new RegExp("(^|&)" + key + "=([^&]*)(&|$)", "i");
	var r = str.match(reg);
	if (r != null)
		return unescape(r[2]);
	return null;
}

function getTrObjsValueForPopupbox(trObjsArr) {
	if (trObjsArr == null || trObjsArr.length == 0)
		return '';
	var str = '';
	for (var i = 0; i < trObjsArr.length; i++) {
		var tdChilds = trObjsArr[i].getElementsByTagName('TD');
		for (var j = 0; j < tdChilds.length; j++) {
			var name = tdChilds[j].getAttribute('name');// 获取当前列对应的<col/>的列名
			var value = tdChilds[j].getAttribute('value');// 获取选中行的当前列的数据
			if (name && name != '') {
				str = str + '&' + name + '=' + value;
			}
		}
	}
	return str;
}

function logout() {
	art.dialog({
		width : 200,
		content : '确定退出吗？',
		okVal : '退出',
		ok : function() {
			window.location.href = 'jsp/login/logout.jsp';
			return false;
		},
		cancelVal : '取消',
		cancel : true
	});

}
