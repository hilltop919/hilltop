function closeDialogAfterSaveCallback(paramsObj)
{
	artDialog.close();
}

/**
 * 修改密码是校验确认密码
 * @param pageid
 * @param reportid
 * @param dataObjArr
 * @returns
 */
function validateConfirmPassword(pageid,reportid,dataObjArr)
{
	if(dataObjArr==null){
		wx_alert('请填写密码进行修改！');
		return WX_SAVE_TERMINAT;
	}
	for(var i=0;i<dataObjArr.length;i++)
	{
		dataObjTmp=dataObjArr[i];
		if(dataObjTmp['WX_TYPE']=='delete') continue;//当前是在做删除操作
		var new_password=dataObjTmp['new_password'];
		var new_password2=dataObjTmp['new_password2'];
		if(new_password!=new_password2)
		{
			wx_alert('两次输入的密码不一致！');
			return WX_SAVE_TERMINAT;
		}
	}
	return WX_SAVE_CONTINUE;
}

/**
 * 报表list行选中执行的回调函数
 */
function reportListSelectCallback(pageid,reportid,selectedTrObjArr,deselectedTrObjArr)
{
	var str=getTrObjsValue(selectedTrObjArr);
	if(str!=null&&str!='')
	{
		var tempurl="ShowReport.wx?PAGEID="+str;
		window.frames.reportframe.location.href=tempurl;
	}
}

function InvokeCallbackMethod_refreshTitle(xmlHttpObj, datasObj) {
	if (datasObj == null)
		return;
	refreshComponentDisplay(getQueryString('PAGEID'),'title');
}

/**正则分析法 获取url参数*/
function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
    }


function InvokeCallbackMethod_refreshHome_report1(xmlHttpObj, datasObj) {
	if (datasObj == null)
		return;
	refreshComponentDisplay('home','report1');
}
function InvokeCallbackMethod_refreshHome_report2(xmlHttpObj, datasObj) {
	if (datasObj == null)
		return;
	refreshComponentDisplay('home','report2');
}


function refreshPersonal_task_details(xmlHttpObj){
	refreshComponentDisplay('personal_task_details',null,true);
}
function winOpenFullScreen(strURL)
{
    var sheight = screen.height-70;
    var swidth = screen.width-10;
    var winoption    ="left=0,top=0,height="+sheight+",width="+swidth+",toolbar=yes,menubar=yes,location=yes,status=yes,scrollbars=yes,resizable=yes";
    var tmp=window.parent.showModalDialog(strURL,'',winoption);
    return tmp;
}

function winModalFullScreen(strURL)
{
    var sheight = screen.height-120;
    var swidth = screen.width-60;
    var winoption ="dialogHeight:"+sheight+"px;dialogWidth:"+ swidth +"px;status:yes;scroll:yes;resizable:yes;center:yes";
    var tmp=window.showModalDialog(strURL,window,winoption);
    return tmp;
}
function winModalFullScreen2(strURL,width,height)
{
    var sheight = height;
    var swidth = width;
    var winoption ="dialogHeight:"+sheight+"px;dialogWidth:"+ swidth +"px;status:yes;scroll:yes;resizable:yes;center:yes";
    var tmp=window.showModalDialog(strURL,window,winoption);
    return tmp;
}


function getTrObjsValue(trObjsArr)
{
	if(trObjsArr==null||trObjsArr.length==0) return '';
	var str='';
	for(var i=0;i<trObjsArr.length;i++)
	{
		var tdChilds=trObjsArr[i].getElementsByTagName('TD');
		for(var j=0;j<tdChilds.length;j++)
		{
			var name=tdChilds[j].getAttribute('name');//获取当前列对应的<col/>的列名
			var value=tdChilds[j].getAttribute('value');//获取选中行的当前列的数据
			if(name&&name!='')
			{
				str=value;
			}
		}
	}
	return str;
}

