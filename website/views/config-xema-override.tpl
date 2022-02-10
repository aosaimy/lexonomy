%import json
%JSON=json.dumps
<!DOCTYPE HTML>
<html>
	<head>
		%include("head.tpl")
		<title>{{dictTitle}}</title>
		<script type="text/javascript" src="../../../libs/screenful/screenful.js"></script>
    <link type="text/css" rel="stylesheet" href="../../../libs/screenful/screenful.css" />
		<script type="text/javascript" src="../../../libs/screenful/screenful-loc-{{siteconfig['lang']}}.js"></script>
		<script type="text/javascript" src="../../../libs/screenful/screenful-user.js"></script>
		<link type="text/css" rel="stylesheet" href="../../../libs/screenful/screenful-user.css" />
		<link type="text/css" rel="stylesheet" href="../../../libs/screenful/screenful-theme-blue.css" />
		<script type="text/javascript">
		Screenful.User.loggedin={{!JSON(user["loggedin"])}};
		Screenful.User.username="{{user['email']}}";
		</script>
		<script type="text/javascript">var rootPath="../../../";</script>
		<script type="text/javascript" src="../../../furniture/screenful-user-config.js"></script>
		<link type="text/css" rel="stylesheet" href="../../../libs/screenful/screenful-editor.css" />
		<script type="text/javascript" src="../../../libs/screenful/screenful-editor.js"></script>
		<script type="text/javascript" src="../../../widgets/xema-override.js"></script>
		<script type="text/javascript" src="../../../libs/xonomy-tools/dtdconvert/dtd2xonomy.js"></script>
		<link type="text/css" rel="stylesheet" href="../../../widgets/pillarform.css" />
		<script type="text/javascript">
		Screenful.Editor.singleton=true;
		Screenful.Editor.entryID="xema";
		Screenful.Editor.leaveUrl="../../../{{dictID}}/config/";
		Screenful.Editor.readUrl="../../../{{dictID}}/configread.json";
		Screenful.Editor.updateUrl="../../../{{dictID}}/configupdate.json";
		Screenful.Editor.editor=function(div, entry){
			XemaOverride.change=Screenful.Editor.changed;
			XemaOverride.render(div, entry.content);
		};
		Screenful.Editor.harvester=function(div){
			return JSON.stringify(XemaOverride.harvest(div));
		};
		Screenful.Editor.allowSourceCode=false;
		Screenful.Editor.toolbarLinks=[
			{image: "../../../furniture/cancel.png", caption: "توقف عن استخدام البنية الخاصة بك (Schema)...", href: "../../../{{dictID}}/config/xema/"}
		];
		</script>
		<link type="text/css" rel="stylesheet" href="../../../furniture/ui.css" />
		%if siteconfig["rtl"]:
		<link type="text/css" rel="stylesheet" href="{{siteconfig["baseUrl"]}}/furniture/rtl.css" />
		%end
	</head>
	<body>
                %include("header.tpl", i18n=i18n,user=user, dictID=dictID, dictTitle=dictTitle, current="config", configTitle=i18n["Entry structure"], configUrl="xema-override", rootPath="../../../")
	</body>
</html>
