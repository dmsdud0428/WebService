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
