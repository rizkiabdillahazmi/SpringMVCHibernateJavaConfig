async function loadFakultas() {
	let data;
	const res = await fetch('../resources/json/fakultas.json');
	data = await res.json();

	let html_code = "<option value='0'>- Pilih Fakultas -</option>";

	for (let i = 0; i < data.length; i++) {
		let obj = data[i];

		html_code += "<option value='" + obj.id + "'>" + obj.nama + "</option>";
	}

	document.getElementById("fakultas").innerHTML = html_code;
}

async function loadJurusan(event) {
	let data;
	const res = await fetch('../resources/json/fakultas.json');
	data = await res.json();

	let fk_id = event.target.value;

	if (fk_id == 0) {
		document.getElementById("prodi").setAttribute("disabled", "true");
		return 0;
	}

	let dataProdi;

	for (let i = 0; i < data.length; i++) {
		if (data[i].id == fk_id) {
			dataProdi = data[i].prodi;
			break;
		}
	}

	let html_code = "<option value='0'>- Pilih Program Studi -</option>";

	for (let i = 0; i < dataProdi.length; i++) {
		let obj = dataProdi[i];
		html_code += "<option value='" + obj.id + "'>" + obj.nama + "</option>"
	}
	document.getElementById("prodi").removeAttribute("disabled");
	document.getElementById("prodi").innerHTML = html_code;

}
