<?php

require('includes/header.php');

?>

	<div class="container">
		<div class="row">
			<div id="infoTag" class="col-12 mt-5 text-center">
				<h1>General Information</h1>
				<p>
				Thank you for your interest in the Full-Stack Web Development Program.<br/>
				Please provide your name and email address before continuing on to the exam.
				</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-12 mb-5 text-center">
		<div id="error"></div>
		<form id="frm" action="" method="post">
			<label class="formLabel" for="firstName" >  First Name: </label><br>
			<input type="text" name="firstName" id="firstName"  required><br>

			<label  class="formLabel" for="lastName"> Last Name: </label><br>
			<input type="text" name="lastName" id="lastName"  required><br>

			<label class="formLabel" for="email">  Email: </label>
			<br>
			<input type="text" name="email" id="email" required><br>

			<button type="button" id="beginBtn" class="btn btn-success btn-lg text-center">Begin Test</button>

		</form>
    </div>
	</div>
	</div>
</body>
</html>


<?php
 	require('includes/footer.php');
?>

