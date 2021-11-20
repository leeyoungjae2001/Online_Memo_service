window.onload = () =>{
    let post_article = document.getElementsByClassName('post-article');
    for(var i = 0; i < post_article.length; i++){
        let post = post_article[i].getElementsByTagName('img')[0];
        post.onclick = (target) => {
            if(target.path[2].style.height == '100%') {
                target.path[2].style.height = '40px'
            }
            else {
                target.path[2].style.height = '100%'
            }
        }
    }
}