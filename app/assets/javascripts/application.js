function InitialiseDemo() {
	// initialising fullpage js
	$("#fullpage").fullpage({
		controlArrows: false,
		slidesNavigation: true
	});

	$(".ui-code").on("keyup", SomeonePressedEnter);
	$(".ui-code").on("input propertychange", SomeoneEnteredSomething);
	$(".ui-solution").on("click", SomeoneGaveUpOrWantsToSeeTheAnswer);

	function SomeoneEnteredSomething(e) {
		var $curCode = $(e.currentTarget);
		var $board = $curCode.closest(".ui-board");
		var $style = $board.children("style");

		$style.html($curCode.val());
	}

	function SomeonePressedEnter(e) {
		if (e.keyCode === 13) {
			var $curCode = $(e.currentTarget);
			var curCodeHtml = $curCode.get(0);

			var cursorPos = curCodeHtml.selectionStart;
			var textAreaTxt = $curCode.val();
			var indentedText = textAreaTxt.substring(0, cursorPos) + "  " + textAreaTxt.substring(cursorPos);
			
			$curCode.val(indentedText);

			var newCursorPos = cursorPos + 2;
			curCodeHtml.setSelectionRange(newCursorPos, newCursorPos);
		}
	}

	function SomeoneGaveUpOrWantsToSeeTheAnswer(e) {
		var $curSolution = $(e.currentTarget);

		var solution = $curSolution.attr("solution");

		var $board = $curSolution.closest(".ui-board");
		var $code = $board.children(".ui-code");

		var colour = $board.attr("colour");
		solution = solution.replace(/{background}/g, colour);

		$code.val(solution);
		$code.trigger("input");
	}
}