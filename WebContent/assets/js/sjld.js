$(function(){
	$("#type1").change(function(){
		var type=$(this).val();
		$("#type2").html("");
		$("#type3").html("");
		$("#type2").html("<option value='-1'>全部</option>")
		$.post("nei/infos",{type:type},function(data){
			$.each(data,function(){
				$("<option value="+this.id+">"+this.categoryname+"</option>").appendTo("#type2");
			})
		})
	})
	$("#type2").change(function(){
		var type=$(this).val();
		$("#type3").html("");
		$("#type3").html("<option value='-1'>全部</option>")
		$.post("nei/infos",{type:type},function(data){
			$.each(data,function(){
				$("<option value="+this.id+">"+this.categoryname+"</option>").appendTo("#type3");
			})
		})
	})
	
})