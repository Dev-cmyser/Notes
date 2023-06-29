[[Frontend]]
>[!info] Надо использовать хук async created



## Пример
```javascript
async created() {
    const response = await this.$axios.get("/api/shifts");
    const filteredData = response.data.filter((item) => item.season === "summer");
    const shiftPromises = filteredData.map(async (item) => {
      let shift_images = "/media/media/girl_with_a_gun.jpg";
      const instructorPromises = item.instructors.map((instructorId) => {
        return this.$axios.get(`/api/personal/${instructorId}`);
      });

      const instructorResponses = await Promise.all(instructorPromises);
      const instructors = instructorResponses.map((response) => response.data);

      const dateStart = DateTime.fromISO(item.date_start);
      const dateEnd = DateTime.fromISO(item.date_end);
      return {
        ...item,
        date_start: dateStart.toFormat("DD"),
        date_end: dateEnd.toFormat("DD"),
        image: shift_images,
        text: item.text.replace(/<[^>]+>/g, ""),
        instructor: instructors,
      };
    });
    const shifts = await Promise.all(shiftPromises);
    this.data = shifts;
  },
  data() {
    return {
      shifts: [],
      instructors: [{ photo: "" }],
      data: [
        {
          id: 0,
          title: "СПОРТ - ",
          dates: "28 мая — 10 июня 2023",
        },
      ],
    };
  },
```

