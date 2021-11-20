window.onload = () => {
    let idpw = document.getElementsByClassName("IDandPW");
    for(var i = 0; i < idpw.length; i++){
        let idpw_btn = idpw[i].getElementsByClassName("clearBtn")[0];
        idpw_btn.addEventListener("click", (idpw) => {
            let text_input = idpw.path[1].getElementsByTagName("input")[0];
            text_input.value="";
        })
    }
}