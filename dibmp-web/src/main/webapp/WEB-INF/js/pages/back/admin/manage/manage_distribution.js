$(function(){
		var count=0;
	 $.post("pages/back/admin/manage/distribution_shop.action",{},function(data){
		 console.log(data);
		 shop =data.allOutputShop;
		 for(a=0;a<shop.length;a++){
			 count =count+(shop[a].num)*(shop[a].price);
			 var put ="<tr id='dettr-"+shop[a].dsdid+"' class='text-success'>"+
				"<td class='text-left'>"+shop[a].dsdid+"</td>"+
				"<td class='text-left'>"+shop[a].name+"</td>"+
				"<td class='text-left'>"+shop[a].wid+"</td>"+
				"<td class='text-center'>"+shop[a].num+"</td>"+
				"<td class='text-center'>"+shop[a].price+"</td>"+
				"<td class='text-center'>"+(shop[a].num)*(shop[a].price)+"</td>"+
				"<td>"+
					"<button id='access-"+shop[a].dsdid+"' class='btn btn-primary btn-xs'>"+
					"	<span class='glyphicon glyphicon-edit'></span>&nbsp;允许出库</button>"+
					"<button id='denied-"+shop[a].dsdid+"' class='btn btn-danger btn-xs'>"+
					"	<span class='glyphicon glyphicon-edit'></span>&nbsp;拒绝出库</button>"+
				"</td>"+
			"</tr>";
			 $("shoplist").append($(put))
		 }
		 $("#title").html(data.allOutput.title);
		 $("city").html(data.allProvince.title-data.allCity.title);
		 $("sum").html(shop.length);
		 $("count").html()
		
	 })
	
	
	
	
	
	$("button[id^=access-]").each(function(){
		$(this).on("click",function(){
			sdid = this.id.split("-")[1] ;
			operateAlert(true,"商品出库成功！","商品出库失败!") ;
		}) ;
	}) ;
	$("button[id^=denied-]").each(function(){ 
		$(this).on("click",function(){
			sdid = this.id.split("-")[1] ;
			operateAlert(false,"商品出库成功！","商品出库失败！") ;
		}) ;
	}) ;
})