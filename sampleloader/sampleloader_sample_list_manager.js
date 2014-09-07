// addfile(string filename)
// removefile(int index)
// clear()
inlets = 1;

// outlet 1: messages to coll samplelist
// outlet 2: messages to sflist~ soundfiles
// outlet 3: outputs int aantal
// outlet 4: outputs list playlist
outlets = 4;

autowatch = 1;

// holds Sample objects; 1000 is arbitrary amount, should be enough but not slow down too much
var list = new Array(1000);

function addfile(filepath)
{
	var i = findfirstemptyindex();
	var newSample = new Sample(i, filepath, generatedisplayname(filepath));
	list[i] = newSample;
	
	//post("added new sample: index = " + list[i].sampleIndex + " path = " + list[i].filePath + " name = " + list[i].displayName); 
	
	// to coll
	var arr = new Array(3);
	arr[0] = list[i].sampleIndex;
	arr[1] = list[i].filePath;
	arr[2] = list[i].displayName;	
	outlet(0, arr);
	
	// to sflist~
	var arr2 = new Array(3);
	arr2[0] = "preload";
	arr2[1] = list[i].sampleIndex;
	arr2[2] = list[i].filePath;
	outlet(1, arr2);
	
	updateAantalAndPlaylist();
}

function removefile(i)
{
	list[i] = null;
	
	// to coll
	var arr = new Array();
	arr[0] = "remove";
	arr[1] = i;
	outlet(0, arr);
	
	// to sflist~
	var arr2 = new Array();
	arr2[0] = "clear";
	arr2[1] = i;
	outlet(1, arr2);
	
	updateAantalAndPlaylist();
}

function clear()
{
	list = new Array(1000);
	
	// to coll
	outlet(0, "clear");
	
	// to sflist~
	outlet(1, "clear");
	
	updateAantalAndPlaylist();
}

function updateAantalAndPlaylist()
{
	var playlist = createplaylist();
	outlet(2, playlist.length);
	outlet(3, playlist);
}

function findfirstemptyindex()
{
	var i = 2;
	while (list[i] != null && list[i] != undefined)
	{
		i++;
	}
	return i;
}

function createplaylist()
{
	var result = new Array();
	for (var i = 0; i < list.length; i++)
	{
		if (list[i] != null && list[i] != undefined)
		{
			result.push(list[i].sampleIndex);
		}
	}
	return result;
}

function generatedisplayname(fullpath)
{
	var ind = fullpath.lastIndexOf("/");
	var displayname = fullpath.substring(ind + 1, fullpath.length);
	return displayname;
}

// functions as a class declaration
function Sample(sampleindex, fullpath, displayname)
{
	this.sampleIndex = sampleindex;
	this.filePath = fullpath;
	this.displayName = displayname;
}
	