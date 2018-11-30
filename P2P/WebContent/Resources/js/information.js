
function popup_open(i) {

		var layer,layer2;
		layer = document.getElementById("popup"+i);
		layer2 = document.getElementById("mask");
		if(layer.style.display=="none"){
		layer.style.display="inline";
		layer2.style.display="inline";
		
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
	
	var title=$('input[name=title]').val();
	var rating=$('input[name=rating]').val();
	var score=$('input[name=score]').val();
	var day=$('input[name=day]').val();
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
	
	var title=$('input[name=title]').val();
	var rating=$('input[name=rating]').val();
	var company=$('input[name=company]').val();
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
	
	var title=$('input[name=title]').val();
	var rating=$('input[name=rating]').val();
	var company=$('input[name=company]').val();
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

function Careerpage(value) {
	
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
	form.setAttribute("method", "Post");
	form.setAttribute("action", "Information");
	
	var kind=$('input[name=kind]').val();
	var comapany=$('input[name=company]').val();
	var business=$('input[name=business]').val();
	var sday=$('input[name=startD]').val();
	var eday=$('input[name=EndD]').val();
	
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
	
	var kind=$('input[name=kind]').val();
	var comapany=$('input[name=company]').val();
	var business=$('input[name=business]').val();
	var sday=$('input[name=startD]').val();
	var eday=$('input[name=EndD]').val();
	
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