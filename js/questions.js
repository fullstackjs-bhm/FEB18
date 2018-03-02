$(document).ready(function(){
	var question = document.getElementById('testQuestion'); // destination for question	                              
	var choice = document.getElementsByName("choice"); // radio name

	// options in series
	var optionA = document.getElementById('optionA');        
	var optionB = document.getElementById('optionB');
	var optionC = document.getElementById('optionC');
	var optionD = document.getElementById('optionD');

	// button that advances the test
	var nextBTN = document.getElementById('nextBTN');

	var userAnswers = [];  // stores Answers
	var index = 0;         // advances through testJSON

	
	$.ajax({
		url: "scripts/testjson.php",
		type: "GET",
		dataType: "json",
		success: function(testJSON){
			
			//populate text to page
			function pushQ(){
				var qNum = index + 1; // Question number                         
				question.innerHTML = qNum + ". " + testJSON[index].questions;
				optionA.innerHTML = testJSON[index].optionA;
				optionB.innerHTML = testJSON[index].optionB;
				optionC.innerHTML = testJSON[index].optionC;
				optionD.innerHTML = testJSON[index].optionD;
				// $.('#nextBTN').addClass('disabled');
			}

			pushQ();
			
			// click to advance to next question

			nextBTN.addEventListener("mouseup", function advanceTest(){
				console.log(testJSON[index]);
				if ( index != testJSON.length ){ //is this the last question?
					for (var j = 0; j < choice.length; j++){
						   if (choice[j].checked){
						    userAnswers.push(choice[j].value);
						    console.log(userAnswers);
						    break;
						}
					}
					index += 1;
					pushQ();
					
				}else{ //move to grading
						
				} //exit if/else index != testJSON.length
			}); //exit nextBTN(advanceTest)
		} // exit success: function(testJSON)		
	}); //exit ajax
}); //exit doc.ready




