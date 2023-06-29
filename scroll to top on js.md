[[Frontend]]

```java
// колбэк на пагинацию

    let up_after_click_on_pagItem = document.querySelector(".catalog__header");
    function UpToTop() {up_after_click_on_pagItem.scrollIntoView({ block: "center", behavior: "smooth" });
 }
// конец колбэка, а потом в онклике уже просто функцию вызываем
// главное вызвать функцию там где надо, onclick необязателен
item.onclick = () => {

			if(document.querySelector('.catalog')){
				
				// scroll to top
				UpToTop()

				return getDataCatalog(data)

			}

```