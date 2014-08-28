function TextNumOnly( strValue,boxObj )
{
	if( isEmpty( strValue ) ) return true;
	if( !checkExp( /^[A-Za-z0-9]+$/g, strValue ))
	{
		return false;
	}
	return true;
}
function isTime( strValue,boxObj )
{
	if( isEmpty( strValue ) ) return true;
	if( !checkExp( /^(0\d{1}|1\d{1}|2[0-3]):([0-5]\d{1})$/g, strValue ))
	{
		return false;
	}
	return true;
}

function isChar2( strValue,boxObj )
{
	if( strValue.length == 2 )
		return true;
	else
		return false;
}

function isChar3( strValue,boxObj )
{
	if( strValue.length == 3 )
		return true;
	else
		return false;
}

function isChar4( strValue,boxObj )
{
	if( strValue.length == 4 )
		return true;
	else
		return false;
}

/**是否符合航班代码规则  例如 B/D  */
function isCharCode( strValue,boxObj )
{
	var pattern = /^([a-zA-Z]){1}\/([a-zA-Z]){1}/;
	return checkExp( pattern, strValue );
	
}

function airlineCheck(strValue,boxObj){
	strValue = strValue.toUpperCase();
	var pattern = /([A-Z|0-9]{3}-){1,5}[A-Z|0-9]{3}/;
	if(""==strValue.replace(pattern,""))
		return true;
	else 
		return false;
}

function setTqDate(obj,rptid,comp){
	
	var dateStr = obj.value;
	if(isDate(dateStr)){
		var date = new Date(dateStr);
		date.setFullYear(date.getFullYear()-1);
		var newDateStr = date.getFullYear()+"-";
		if(date.getMonth()+1<10)
			newDateStr += "0";
		newDateStr += (date.getMonth()+1)+"-";
		if(date.getDate()<10)
			newDateStr += "0";
		newDateStr += date.getDate();
		document.getElementById(rptid+'_guid_report1_wxcondition_'+comp).value = newDateStr;
	}
}