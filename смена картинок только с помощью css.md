[[Frontend]]
Незнаю как но это блин работает!!!
```html 
<div class="product">
  <div class="product_image">
    <img src="https://images.unsplash.com/photo-1682070545304-50dd353549d9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxODY2Nzh8MHwxfHJhbmRvbXx8fHx8fHx8fDE2ODQ1ODIxNTJ8&ixlib=rb-4.0.3&q=80&w=1080" alt="" class="product_image_glav">
    <div class="product_image_container">
      <span class='product_image_item'>
        <img src="https://images.unsplash.com/photo-1683027230080-fd2ef9fd693f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxODY2Nzh8MHwxfHJhbmRvbXx8fHx8fHx8fDE2ODQ1ODIzNDN8&ixlib=rb-4.0.3&q=80&w=1080" alt="" class="product_image_item_image">
      </span>
      <span class='product_image_item'>
        <img src="https://plus.unsplash.com/premium_photo-1680100256078-550ee2a5e126?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxODY2Nzh8MHwxfHJhbmRvbXx8fHx8fHx8fDE2ODQ1ODIzNjB8&ixlib=rb-4.0.3&q=80&w=1080" alt="" class="product_image_item_image">
      </span>
      <span class='product_image_item'>
        <img src="https://images.unsplash.com/photo-1683379382026-1b783a6e2aaf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxODY2Nzh8MHwxfHJhbmRvbXx8fHx8fHx8fDE2ODQ1ODIzNzB8&ixlib=rb-4.0.3&q=80&w=1080" alt="" class="product_image_item_image">
      </span>
      <span class='product_image_item'>
        <img src="https://images.unsplash.com/photo-1683027230080-fd2ef9fd693f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxODY2Nzh8MHwxfHJhbmRvbXx8fHx8fHx8fDE2ODQ1ODIzNDN8&ixlib=rb-4.0.3&q=80&w=1080" alt="" class="product_image_item_image">
      </span>
    </div>
  </div>
  <div class="product_content">
    ........
  </div>
</div>
```


```css
.product{
  width: 500px;
  height: 600px;
  border: 1px solid #000;
  &_image{
    width: 100%;
    height: 300px;
    position: relative;
    &_glav{
      position: absolute;
      width: 100%;
      height: 100%;
      object-fit: contain;
    }
    &_container{
      position: absolute;
      top: 0px;
      bottom: 0px;
      left: 0px;
      right: 0px;
      flex-direction: row;
      z-index: 2;
      display: flex;
    }
    &_item{
      flex-grow: 1;
      -webkit-box-flex: 1;
      &:hover{
        .product_image_item_image{
          opacity: 1;
        }
      }
      // &:nth-child(1){
      //   background: #000;
      // }
      // &:nth-child(2){
      //   background: #254;
      // }
      // &:nth-child(3){
      //   background: #524;
      // }
      &_image{
        opacity: 0;
        position: absolute;
        margin: auto;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        border: 0;
        vertical-align: middle;
        max-width: 100%;
        max-height: 100%;
        pointer-events: none;
      }
    }
  }
  &_content{
    
  }
}
// что бы картинка снизу исчезала
.product_image:hover .product_image_glav{
  opacity: 0;
}
```