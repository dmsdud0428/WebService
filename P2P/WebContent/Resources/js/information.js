function popup_open(i,j) {
	
	if(j==0){
		
		var layer,layer2;
		layer = document.getElementById("popup"+i);
		layer2 = document.getElementById("mask");
		if(layer.style.display=="none"){
			layer.style.display="inline";
			layer2.style.display="inline";
		
		}
	}
	
	else{
		
		$('input[name=Lnum]').val(j);
		var layer,layer2;
		layer = document.getElementById("popup"+i);
		layer2 = document.getElementById("mask");
		if(layer.style.display=="none"){
			layer.style.display="inline";
			layer2.style.display="inline";	
		}
	}
}

function popup_close(i) {
	var layer,layer2;
	layer = document.getElementById("popup"+i);
	layer2 = document.getElementById("mask");
	if(layer.style.display=="inline"){
		layer.style.display="none";
		layer2.style.display="none";
	}
}

function Servicepage(value) {
	
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post");
	form.setAttribute("action", "Information");
	
	var kind=$('input[name=Skind]').val();
	var company=$('input[name=Scompany]').val();
	var title=$('input[name=Stitle]').val();
	var sday=$('input[name=Ssday]').val();
	var eday=$('input[name=Seday]').val();
	
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "action");
	hiddenField.setAttribute("value", value);
    form.appendChild(hiddenField);
	
	var input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'title';
	input.value = title;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'company';
	input.value = company;
	form.appendChild(input);

	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'kind';
	input.value = kind;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'sday';
	input.value = sday;
	form.appendChild(input);

	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'eday';
	input.value = eday;
	form.appendChild(input);

	document.body.appendChild(form);
	form.submit();
 }

function MServicepage(value) {
	
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post");
	form.setAttribute("action", "Information");
	
	var kind=$('input[name=SMkind]').val();
	var company=$('input[name=SMcompany]').val();
	var title=$('input[name=SMtitle]').val();
	var sday=$('input[name=SMsday]').val();
	var eday=$('input[name=SMeday]').val();
	var num=$('input[name=Lnum]').val();
	
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "action");
	hiddenField.setAttribute("value", value);
    form.appendChild(hiddenField);
	
	var input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'title';
	input.value = title;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'company';
	input.value = company;
	form.appendChild(input);

	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'kind';
	input.value = kind;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'sday';
	input.value = sday;
	form.appendChild(input);

	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'eday';
	input.value = eday;
	form.appendChild(input);

	input=document.createElement('input');
	input.type='hidden';
	input.name='num';
	input.value=num;
	form.appendChild(input);
	
	document.body.appendChild(form);
	form.submit();
 }

function Etcpage(value){
	
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post");
	form.setAttribute("action", "Information");
	
	var company=$('input[name=Ecompany]').val();
	var title=$('input[name=Etitle]').val();
	var sday=$('input[name=Esday]').val();
	var eday=$('input[name=Eeday]').val();
	
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "action");
	hiddenField.setAttribute("value", value);
    form.appendChild(hiddenField);
	
	var input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'title';
	input.value = title;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'company';
	input.value = company;
	form.appendChild(input);
	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'sday';
	input.value = sday;
	form.appendChild(input);

	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'eday';
	input.value = eday;
	form.appendChild(input);

	document.body.appendChild(form);
	form.submit();
	
}

function MEtcpage(value){
	
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post");
	form.setAttribute("action", "Information");
	
	var company=$('input[name=EMcompany]').val();
	var title=$('input[name=EMtitle]').val();
	var sday=$('input[name=EMsday]').val();
	var eday=$('input[name=EMeday]').val();
	var num=$('input[name=Lnum]').val();
	
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "action");
	hiddenField.setAttribute("value", value);
    form.appendChild(hiddenField);
	
	var input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'title';
	input.value = title;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'company';
	input.value = company;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'sday';
	input.value = sday;
	form.appendChild(input);

	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'eday';
	input.value = eday;
	form.appendChild(input);

	input=document.createElement('input');
	input.type='hidden';
	input.name='num';
	input.value=num;
	form.appendChild(input);
	
	document.body.appendChild(form);
	form.submit();
	
}
function Careerpage(value) {
	
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post");
	form.setAttribute("action", "Information");
	
	var kind=$('input[name=Ckind]').val();
	var company=$('input[name=Ccompany]').val();
	var business=$('input[name=Cbusiness]').val();
	var sday=$('input[name=CstartD]').val();
	var eday=$('input[name=CendD]').val();
	
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "action");
	hiddenField.setAttribute("value", value);
    form.appendChild(hiddenField);
	
	var input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'kind';
	input.value = kind;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'company';
	input.value = company;
	form.appendChild(input);

	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'business';
	input.value = business;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'sday';
	input.value = sday;
	form.appendChild(input);
	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'eday';
	input.value = eday;
	form.appendChild(input);
	

	document.body.appendChild(form);
	form.submit();
 }
 
function MCareerpage(value) {

	
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post");
	form.setAttribute("action", "Information");
	
	var kind=$('input[name=CMkind]').val();
	var company=$('input[name=CMcompany]').val();
	var business=$('input[name=CMbusiness]').val();
	var sday=$('input[name=CMstartD]').val();
	var eday=$('input[name=CMendD]').val();
	var num=$('input[name=Lnum]').val();
	
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "action");
	hiddenField.setAttribute("value", value);
    form.appendChild(hiddenField);
	
	var input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'kind';
	input.value = kind;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'company';
	input.value = company;
	form.appendChild(input);

	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'business';
	input.value = business;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'sday';
	input.value = sday;
	form.appendChild(input);
	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'eday';
	input.value = eday;
	form.appendChild(input);

	input=document.createElement('input');
	input.type='hidden';
	input.name='num';
	input.value=num;
	form.appendChild(input);

	document.body.appendChild(form);
	form.submit();
 }



function languagepage(value) {
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post");
	form.setAttribute("action", "Information");
	
	var title=$('input[name=title]').val();
	var rating=$('input[name=rating]').val();
	var score=$('input[name=score]').val();
	var day=$('input[name=day]').val();
	
	
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "action");
	hiddenField.setAttribute("value", value);
    form.appendChild(hiddenField);
	
	var input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'title';
	input.value = title;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'rating';
	input.value = rating;
	form.appendChild(input);

	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'score';
	input.value = score;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'day';
	input.value = day;
	form.appendChild(input);
	

	document.body.appendChild(form);
	form.submit();
 }
 
function Mlanguagepage(value) {
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post");
	form.setAttribute("action", "Information");
	
	var title=$('input[name=Mtitle]').val();
	var rating=$('input[name=Mrating]').val();
	var score=$('input[name=Mscore]').val();
	var day=$('input[name=Mday]').val();
	var num=$('input[name=Lnum]').val();
	
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "action");
	hiddenField.setAttribute("value", value);
    form.appendChild(hiddenField);
	
	var input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'title';
	input.value = title;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'rating';
	input.value = rating;
	form.appendChild(input);

	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'score';
	input.value = score;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'day';
	input.value = day;
	form.appendChild(input);
	

	input=document.createElement('input');
	input.type='hidden';
	input.name='num';
	input.value=num;
	form.appendChild(input);

	document.body.appendChild(form);
	form.submit();
 }

function licensepage(value) {
	
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post");
	form.setAttribute("action", "Information");
	
	var title=$('input[name=Ltitle]').val();
	var rating=$('input[name=Lrating]').val();
	var company=$('input[name=Lcompany]').val();
	var day=$('input[name=Lday]').val();
	
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "action");
	hiddenField.setAttribute("value", value);
    form.appendChild(hiddenField);
	
	var input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'title';
	input.value = title;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'rating';
	input.value = rating;
	form.appendChild(input);

	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'company';
	input.value = company;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'day';
	input.value = day;
	form.appendChild(input);
	

	document.body.appendChild(form);
	form.submit();
 }
 
function Mlicensepage(value) {
	
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post");
	form.setAttribute("action", "Information");
	
	var title=$('input[name=LMtitle]').val();
	var rating=$('input[name=LMrating]').val();
	var company=$('input[name=LMcompany]').val();
	var day=$('input[name=LMday]').val();
	var num=$('input[name=Lnum]').val();
	
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "action");
	hiddenField.setAttribute("value", value);
    form.appendChild(hiddenField);
	
	var input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'title';
	input.value = title;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'rating';
	input.value = rating;
	form.appendChild(input);

	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'company';
	input.value = company;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'day';
	input.value = day;
	form.appendChild(input);

	input=document.createElement('input');
	input.type='hidden';
	input.name='num';
	input.value=num;
	form.appendChild(input);

	
	document.body.appendChild(form);
	form.submit();
 }

function Awardpage(value) {
	
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post");
	form.setAttribute("action", "Information");
	
	var title=$('input[name=Atitle]').val();
	var rating=$('input[name=Arating]').val();
	var company=$('input[name=Acompany]').val();
	var day=$('input[name=Aday]').val();
	
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "action");
	hiddenField.setAttribute("value", value);
    form.appendChild(hiddenField);
	
	var input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'title';
	input.value = title;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'rating';
	input.value = rating;
	form.appendChild(input);

	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'company';
	input.value = company;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'day';
	input.value = day;
	form.appendChild(input);
	

	document.body.appendChild(form);
	form.submit();
 }

function MAwardpage(value) {
	
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post");
	form.setAttribute("action", "Information");
	
	var title=$('input[name=AMtitle]').val();
	var rating=$('input[name=AMrating]').val();
	var company=$('input[name=AMcompany]').val();
	var day=$('input[name=AMday]').val();
	var num=$('input[name=Lnum]').val();
	
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "action");
	hiddenField.setAttribute("value", value);
    form.appendChild(hiddenField);
	
	var input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'title';
	input.value = title;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'rating';
	input.value = rating;
	form.appendChild(input);

	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'company';
	input.value = company;
	form.appendChild(input);

	
	input=document.createElement('input');
	input.type = 'hidden';
	input.name = 'day';
	input.value = day;
	form.appendChild(input);
	
	input=document.createElement('input');
	input.type='hidden';
	input.name='num';
	input.value=num;
	form.appendChild(input);
	

	document.body.appendChild(form);
	form.submit();
 }

