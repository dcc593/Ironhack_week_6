//javascript code for the sandwich views controller

//load the whole document before executing javascript
$(document).on('ready',function(){
	//retrieve the sandwich id from the attribute data-id, which
	// is found in the html tag <h2> in show.html.erb
	var sandwichID = $('.js-sandwich').attr("data-id")
	//if you click a button this function will be executed:
	$('button').on('click',function(arguments){
		//retreive the ingredient name from the current button element
		// that we just clicked. it looks at the data-id attribute in
		// the <button> tag in the show.html.erb file
		var ingredientName = $(arguments.currentTarget).data('id');
		//create a variable that will store the contents of our POST
		// request
		var params={
			name: ingredientName
		}
		//boom! do the ajax request
		$.ajax({
			//the type of request, are we doing a GET or a POST? 
			//remember, POST contains data to be added to a database
			//Get only asks for info. has no data, but you can provide
			//a parameter in the URL, for example when you see
			// an .../:id/... in the link 
			type: "post",
			//the destination to which you call the API
			url: `http://localhost:3000/api/sandwiches/${sandwichID}/ingredients/add`,
			//what kind of data we are sending (we defined params above)
			data: params,
			//if ajax is succesfull execute the updateList method
			success: updateList,
			//if ajax is unsuccesfull execute the handleError method
			error: handleError 
		})

	});

});

function updateList(arguments){
	//the API returns me the ingredient object,
	//therefore I say thank you to mr. API and I grab the object and
	// I store it in the newIngredient variable
	var newIngredient = arguments
	//here I create the piece of html that needs to be added to the page
	// the html will contain pieces of spefic data that I got from arguments
	var html=`
				<li><span><strong>Ingredient:</strong> ${newIngredient.name}, <strong>Calories:</strong> ${newIngredient.calories} </span></li>
	`;
	//here I append that piece of html to the <ul> list in the main show.html.erb file
	$('.js-sanwich').append(html);
};

//handles the error
function handleError(error){
	console.log(error)
	alert("ERROR :" , error);
};