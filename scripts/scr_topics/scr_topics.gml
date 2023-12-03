global.topics = {};

global.topics[$ "Example"] = [
	TEXT("Hello world!"),
	TEXT("I sure hope this dialogue system works first try!"),
	TEXT("We should test having a page with lots of words in it, to make sure that the line break feature is working properly.")
];

global.topics[$ "Good Morning"] = [
	SPEAKER("Ajudante", spr_AjudanteDialog, PORTRAIT_SIDE.LEFT),
	TEXT("Senhor Cientista, a cápsula da esquerda está pronta. O senhor acha mesmo que isso é uma boa ideia?"),
	SPEAKER("Cientista",spr_CientistaDialog, PORTRAIT_SIDE.RIGHT),
	TEXT("Nós tem-... Eu tenho que fazer algo, e essas cápsulas significam algo muito maior do que você imagina."),
	SPEAKER("Ajudante", spr_AjudanteDialog, PORTRAIT_SIDE.LEFT),
	TEXT("Ok senhor..."),
];

global.topics[$ "Breakfast"] = [
	CHOICE("Começar o Trabalho?",
		OPTION("Sim", "Chose Eggs"),
		OPTION("Ainda não", "Chose Pancakes"))
];

global.topics[$ "Chose Eggs"] = [
	TEXT("E lá vamos nós para mais um dia..."),
];

global.topics[$ "Chose Pancakes"] = [
	TEXT("E lá vamos nós para mais um dia..."),
];
