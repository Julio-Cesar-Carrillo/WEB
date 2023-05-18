var alumnos = document.getElementById("alumnos")
var profes = document.getElementById("profes")
var departamentos = document.getElementById("departamentos")
var clases = document.getElementById("clases")

function alumno() {
    alumnos.style.display="block"
    profes.style.display="none"
    departamentos.style.display="none"
    clases.style.display="none"
}

function profe() {
    alumnos.style.display="none"
    profes.style.display="block"
    departamentos.style.display="none"
    clases.style.display="none"
}

function departamento() {
    alumnos.style.display="none"
    profes.style.display="none"
    departamentos.style.display="block"
    clases.style.display="none"
}

function clase() {
    alumnos.style.display="none"
    profes.style.display="none"
    departamentos.style.display="none"
    clases.style.display="block"
}

