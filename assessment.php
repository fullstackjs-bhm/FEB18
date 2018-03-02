<?php require_once('includes/header-no-menu.php'); ?>


        <div class="">
            <div id="testAreaContent" class="col-12 col-md-8 mx-auto my-3">
                <p class="my-3 text-center" id="testQuestion">1. I have a question, are your shoes tied?</p>
                <div class="ansContainer my-1">
                    <input type="radio" name="choice" value="a" /> <span id="optionA">Answer A</span>
                </div>
                <div class="ansContainer my-1">
                    <input class="btn-group-vertical" type="radio" name="choice" value="b" />  <span id="optionB">Answer B</span>
                </div>
                <div class="ansContainer my-1">
                    <input class="btn-group-vertical" type="radio" name="choice" value="c" />  <span id="optionC">Answer C</span>
                </div>
                <div class="ansContainer my-1">
                    <input class="btn-group-vertical" type="radio" name="choice" value="d" />  <span id="optionD">Answer D</span>
                </div>
                <div class="text-center">
                    <button type="button" id="nextBTN" class="btn btn-success">Next</button>
                </div>
            </div>
        
    </div>

<?php require_once('includes/ez-footer.php'); ?>