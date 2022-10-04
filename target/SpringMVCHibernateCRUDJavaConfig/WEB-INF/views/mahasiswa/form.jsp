<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ page isELIgnored="false" %>
			<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

				<%@ include file="../parts/header.jsp" %>
					<title>Form Biodata</title>
					<script src="${contextName}/resources/js/form.js" />"></script>
					</head>

					<body onload='loadFakultas()'>
						<%@ include file="../parts/navbar.jsp" %>

							<section class="mt-28 mb-[20rem] max-w-screen-xl mx-auto">
								<h1 class="text-3xl font-semibold text-center mb-16">FORM BIODATA
									MAHASISWA</h1>
								<form:form method="post" action="save" modelAttribute="mahasiswa"
									class="w-[50rem] mx-auto">
									<div class="flex justify-between font-semibold text-lg mb-3">
										<div class="w-[40%]">Angkatan</div>
										<div class="w-[5%]">:</div>
										<div class="w-[55%] font-medium">
											<form:input type="number" path="nim" placeholder="Masukkan Angkatan"
												class="w-full focus:outline focus:outline-teal-500 focus:outline-4 focus:rounded-sm" />
										</div>
									</div>
									<div class="flex justify-between font-semibold text-lg mb-3">
										<div class="w-[40%]">Nama</div>
										<div class="w-[5%]">:</div>
										<div class="w-[55%] font-medium">
											<form:input type="text" path="nama" placeholder="Masukkan Nama"
												class="w-full focus:outline focus:outline-teal-500 focus:outline-4 focus:rounded-sm" />
										</div>
									</div>
									<div class="flex justify-between font-semibold text-lg mb-3">
										<div class="w-[40%]">Jenis Kelamin</div>
										<div class="w-[5%]">:</div>
										<div class="w-[55%] font-medium">
											<form:select path="jk" id=""
												class="w-full rounded-sm bg-white outline outline-1">
												<option value="">Pilih Jenis Kelamin</option>
												<option value="L">Laki - laki</option>
												<option value="P">Perempuan</option>
											</form:select>
										</div>
									</div>
									<div class="flex justify-between font-semibold text-lg mb-3">
										<div class="w-[40%]">Fakultas</div>
										<div class="w-[5%]">:</div>
										<div class="w-[55%] font-medium">
											<form:select path="jk" id="fakultas" onchange='loadJurusan(event)'
												class="w-full rounded-sm bg-white outline outline-1">
												<option value="0">- Pilih Fakultas -</option>
											</form:select>
										</div>
									</div>
									<div class="flex justify-between font-semibold text-lg mb-3">
										<div class="w-[40%]">Prodi</div>
										<div class="w-[5%]">:</div>
										<div class="w-[55%] font-medium">
											<form:select path="jk" id="prodi"
												class="w-full rounded-sm bg-white outline outline-1">
												<option value="0">- Pilih Prodi -</option>
											</form:select>
										</div>
									</div>

									<div class="flex justify-between font-semibold text-lg mb-3">
										<div class="w-[40%]">Alamat</div>
										<div class="w-[5%]">:</div>
										<div class="w-[55%] font-medium">
											<form:input type="text" path="alamat" placeholder="Masukkan Alamat"
												class="w-full focus:outline focus:outline-teal-500 focus:outline-4 focus:rounded-sm" />
										</div>
									</div>

									<button type="submit"
										class="block mt-10 ml-auto mr-0 border-2 px-3 py-1 font-semibold rounded-lg bg-teal-600 hover:bg-teal-500">Simpan</button>
								</form:form>
							</section>

							<%@ include file="../parts/footer.jsp" %>