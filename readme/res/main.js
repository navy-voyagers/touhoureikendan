	function OpenHomepage() {
		alert("外部ページに移動します");
		window.open("https://sites.google.com/view/comet1");
	}
	function OpenHowToPlay() {
		var ele = document.getElementById('howtoplay');
		if (ele.style.display == 'none') {
			ele.style.display = 'block';
		}else{
			ele.style.display = 'none';
		}
	}
