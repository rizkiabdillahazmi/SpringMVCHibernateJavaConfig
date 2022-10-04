<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Edit Mhs</h1>
<form:form method="POST" action="/SpringMVCCRUDSimple/editsave">
	<table>
		<tr>
			<td></td>
		<tr>
			<td>Id :</td>
			<td><form:input path="mhsId" /></td>
		</tr>

		<tr>
			<td>NIM :</td>
			<td><form:input path="mhsNIM" /></td>
		</tr>

		<tr>
			<td>Nama :</td>
			<td><form:input path="mhsNama" /></td>
		</tr>

		<tr>
			<td>Jenis Kelamin:</td>
			<td><form:input path="mhsJK" /></td>
		</tr>
		
		<tr>
			<td>Fakultas:</td>
			<td><form:input path="mhsFakultas" /></td>
		</tr>
		
		<tr>
			<td>Prodi:</td>
			<td><form:input path="mhsProdi" /></td>
		</tr>
		
		<tr>
			<td>Alamat:</td>
			<td><form:input path="mhsAlamat" /></td>
		</tr>

		<tr>
			<td></td>
			<td><input type="submit" value="Edit Save" /></td>
		</tr>
	</table>
</form:form>
