<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<%@ include file="../parts/header.jsp"%>
<title>Biodata Mahasiswa</title>
</head>

<body>
	<%@ include file="../parts/navbar.jsp"%>

	<section class="mt-28 mb-[20rem] max-w-screen-2xl mx-auto">
		<h1 class="text-3xl font-semibold text-center mb-16">DATA
			MAHASISWA</h1>
		<!-- component -->
		<div class="overflow-x-auto">
			<div
				class="flex items-center justify-center font-sans overflow-hidden">
				<div class="w-full lg:w-5/6">
					<a href="${contextName}/mahasiswa/tambah"
						class="block w-36 bg-blue-700 p-2 rounded-md mb-4 text-center font-semibold text-sm text-white hover:bg-blue-500">+
						Tambah Data</a>
					<div class="bg-white shadow-md rounded-lg">
						<div
							class="grid grid-cols-[0.2fr_repeat(3,_0.7fr)_repeat(2,_0.4fr)] justify-items-center items-center border-b-2 border-slate-300 uppercase px-4 py-3 text-white bg-teal-600 font-semibold">
							<div>No</div>
							<div>NIM</div>
							<div>NAMA</div>
							<div>JENIS KELAMIN</div>
							<div>Status</div>
							<div>AKSI</div>
						</div>
						<c:forEach var="mhs" items="${listMahasiswa}" varStatus="loop">
							<div
								class="dropdown__wrapper py-4 even:bg-white odd:bg-gray-100 hover:bg-gray-200">
								<div
									class="dropdown__cell grid grid-cols-[0.2fr_repeat(3,_0.7fr)_repeat(2,_0.4fr)] items-center px-4">
									<div class="text-center">${loop.index+1}</div>
									<div class="text-center">${mhs.nim}</div>
									<div class="text-left ml-6">
										<div class="flex items-center">
											<div class="mr-2">
												<svg xmlns="http://www.w3.org/2000/svg" fill="none"
													viewBox="0 0 24 24" stroke-width="1.5"
													stroke="currentColor" class="w-6 h-6">
                                                <path
														stroke-linecap="round" stroke-linejoin="round"
														d="M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z" />
                                            </svg>
											</div>
											<span class="font-medium">${mhs.nama}</span>
										</div>
									</div>
									<div class="text-center">${mhs.jk}</div>
									<div class="text-center">
										<span
											class="bg-green-200 text-green-600 py-1 px-3 rounded-full text-xs font-bold">Aktif</span>
									</div>
									<div class="button-show cursor-pointer">
										<div class="flex item-center justify-center text-center">
											<div
												class="w-5 mr-2 transform hover:text-green-500 hover:scale-110"
												onclick="expandCell(this)">
												<svg xmlns="http://www.w3.org/2000/svg" fill="none"
													viewBox="0 0 24 24" stroke="currentColor">
                                                <path
														stroke-linecap="round" stroke-linejoin="round"
														stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                                <path
														stroke-linecap="round" stroke-linejoin="round"
														stroke-width="2"
														d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                                            </svg>
											</div>
											<div
												class="w-5 mr-2 transform hover:text-blue-500 hover:scale-110">
												<svg xmlns="http://www.w3.org/2000/svg" fill="none"
													viewBox="0 0 24 24" stroke="currentColor">
                                                <path
														stroke-linecap="round" stroke-linejoin="round"
														stroke-width="2"
														d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z" />
                                            </svg>
											</div>
											<div class="w-5 transform hover:text-red-500 hover:scale-110">
												<a href="mahasiswa/delete/${mhs.id}"><svg
														xmlns="http://www.w3.org/2000/svg" fill="none"
														viewBox="0 0 24 24" stroke="currentColor">
                                                <path
															stroke-linecap="round" stroke-linejoin="round"
															stroke-width="2"
															d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                                            </svg></a>
											</div>
										</div>
									</div>
								</div>
								<div
									class="dropdown__cell-content transition-all duration-300 ease-[ease] max-h-0 overflow-hidden overflow-y-scroll">
									<div
										class="max-w-screen-lg mx-20 border-4 border-dashed p-4 rounded-md border-green-500 text-sm">
										<div class="font-bold text-lg text-center">Data Detail :</div>
										<div
											class="w-[50%] mt-2 mx-auto bg-stone-100 p-4 rounded-md font-semibold">
											<div class="flex justify-between py-1">
												<div class="w-[30%]">NIM</div>
												<div class="w-[5%] text-center">:</div>
												<div class="w-[65%]">${mhs.nim}</div>
											</div>
											<div class="flex justify-between py-1">
												<div class="w-[30%]">Nama Lengkap</div>
												<div class="w-[5%] text-center">:</div>
												<div class="w-[65%]">${mhs.nama}</div>
											</div>
											<div class="flex justify-between py-1">
												<div class="w-[30%]">Jenis Kelamin</div>
												<div class="w-[5%] text-center">:</div>
												<div class="w-[65%]">${mhs.jk}</div>
											</div>
											<div class="flex justify-between py-1">
												<div class="w-[30%]">Fakultas</div>
												<div class="w-[5%] text-center">:</div>
												<div class="w-[65%]">${mhs.nim}</div>
											</div>
											<div class="flex justify-between py-1">
												<div class="w-[30%]">Prodi</div>
												<div class="w-[5%] text-center">:</div>
												<div class="w-[65%]">
												<c:forEach var="p" items="${mhs.prodi}">
												${p.nama}
												</c:forEach>
				
												</div>
											</div>
											<div class="flex justify-between py-1">
												<div class="w-[30%]">Alamat</div>
												<div class="w-[5%] text-center">:</div>
												<div class="w-[65%]">${mhs.alamat}</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	<script src="<c:url value="/resources/js/script.js" />"></script>

	<%@ include file="../parts/footer.jsp"%>