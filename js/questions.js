//var test;


$(document).ready(function(){
	var question = document.getElementById('testQuestion');
	var optionA = document.getElementById('optionA');
	var optionB = document.getElementById('optionB');
	var optionC = document.getElementById('optionC');
	var optionD = document.getElementById('optionD');
	var nextBTN = document.getElementById('nextBTN');
	var userAnswers = [];
	var index = 0;
	var qNum = index + 1;
	$.ajax({
		url: "scripts/testjson.php",
		type: "GET",
		dataType: "json",
		success: function(response){
			console.log(response);
			$('.tester').html(response[0].questions + "<br />" + response[0].optionA + "<br />" + response[0].optionB);


			
			// test = response;
			// return test;
			
			// nextBTN.addEventListener("click", function advanceTest(){
			// 	console.log(test);
			// 	// if(test[index] != test[-1]){
			// 	// 	function nextQ(){
			// 	// 		// console.log(test);
			// 	// 		// userAnswers.push(/* */);
			// 	// 		// index += 1;
			// 	// 		// question.innerHTML = qNum + "." + test[index].questions;
			// 	// 		// optionA.innerHTML = test[index].optionA;
			// 	// 		// optionB.innerHTML = test[index].optionB;
			// 	// 		// optionC.innerHTML = test[index].optionC;
			// 	// 		// optionD.innerHTML = test[index].optionD
			// 	// 	}	
			// 	// }else{
			// 	// 	function gradeTest(){
			// 	// 		/* Russels function */
			// 	// 	};
			// 	// }
			// });


		}
		
	});


});




