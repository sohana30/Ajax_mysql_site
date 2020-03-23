(function () {
	"use strict";
	var searchRequest;
	var countryRequest;
	var searchField = document.querySelector("#searchbox");
	//helper function create XHR object for us
	function createRequest() {
		var request;
		if (window.XMLHttpRequest || true) {
			request = new XMLHttpRequest();

		}
		else {
			console.log("Older Browser");
		}
		return request;
	}
	function showResults(e) {
		if (searchField.value.length > 0) {
			console.log("showResults called");
		
			//console.log(e.currentTarget.value);
			var str = e.currentTarget.value;
			searchRequest = createRequest();
			var url = "searchcountry.php?searchstring=" + str;
			searchRequest.onreadystatechange = searchStatus;
			searchRequest.open("GET", url);
			searchRequest.send(null);
		} else {
			document.querySelector("#txtHint").innerHTML = '';
		}
	}
	function searchStatus() {

		if (searchRequest.readyState === 4 && searchRequest.status === 200) {
			//document.querySelector("#txtHint").innerHTML = searchRequest.responseText;

			//document.querySelector("#txtHint").insertAdjacentHTML('beforeend', searchRequest.responseText);
			//var el = document.createElement('li');
			//el.id='4';
			//el.innerHTML = "<a id= '4'>TTTT</a>"
			//document.querySelector("#txtHint").appendChild(el);
			document.querySelector("#txtHint").innerHTML = '';
			var str = searchRequest.responseText;
			var items = JSON.parse(str);

			for (var i = 0; i < items.length; i++) {
				var li = document.createElement('li');
				var a = document.createElement('a');

				a.id = items[i].id;
				a.innerHTML = items[i].content;
				li.appendChild(a);
				document.querySelector("#txtHint").appendChild(li);
				a.addEventListener("click", displayInfo);
				console.log(items[i].content);
			}




			//document.getElementById( '4' ).onclick =displayInfo;
			if (document.querySelector("#txtHint a")) {

				//document.querySelector("#txtHint a").addEventListener("click",displayInfo)
				//console.log("displayInfo called");

				//document.querySelector("#txtHint a").addEventListener("click", displayInfo);
			}

		}
	}
	function displayInfo(e) {
		console.log("displayInfo called");
		//console.log("displayInfo called");
		console.log(e.currentTarget.id);
		var countryID = e.currentTarget.id;
		countryRequest = createRequest();
		var url = "displaycountry.php?custid=" + countryID;
		countryRequest.onreadystatechange = displayStatus;
		countryRequest.open("GET", url);
		countryRequest.send(null);
	}
	function displayStatus() {
		if (countryRequest.readyState === 4 && countryRequest.status === 200) {
			//document.querySelector("#maindiv").insertAdjacentHTML(customerRequest.responseText);
			document.querySelector("#maindiv").innerHTML = countryRequest.responseText;
		}
	}

	//console.log("showResults called");
	searchField.addEventListener("keyup", showResults);

})();