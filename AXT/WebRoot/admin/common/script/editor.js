
		KE.show({
			id : 'content',
			imageUploadJson : '/AXT/admin/common/kindeditor/jsp/upload_json.jsp',
			fileManagerJson : '/AXT/admin/common/kindeditor/jsp/file_manager_json.jsp',
			allowFileManager : true,
			afterCreate : function(id) {
				KE.event.ctrl(document, 13, function() {
					KE.util.setData(id);
					document.forms['form1'].submit();
				});
				KE.event.ctrl(KE.g[id].iframeDoc, 13, function() {
					KE.util.setData(id);
					document.forms['form1'].submit();
				});
			}
		});
