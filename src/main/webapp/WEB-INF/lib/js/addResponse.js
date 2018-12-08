$(".pencil.alternate.icon").on("click",function(event){
	$(this).parent().parent().next().toggle();
	//$(".extra.content").toggle();
});

$(".extra.content").find("input").on("change",function(){
	var className = "right floated large paper plane outline icon";
	if(this.value){
		className = "blue " + className;
	}
	console.log(className);
	$($(this).next()[0]).attr("class",className);
});