[[Frontend]]
# вот так работает в императивном стиле
```java

const response = await this.$axios.get("/api/shifts");

  

    const filteredData = response.data.filter((item) => {

    if(item.is_new_element === true){

        return item

    }

    })
```

# а вот так нет! НО для строки работает! 
```java

const response = await this.$axios.get("/api/shifts");

  

    const filteredData = response.data.filter((item) => {
		item.is_new_element === true # не работает
		item.text === "some text" # работает!
    })
```