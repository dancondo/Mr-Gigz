const collapser = () => {

  const collapse = (event) => {
    const tgt = event.currentTarget;
    tgt.classList.toggle("active");
    const content = tgt.nextElementSibling;
    console.log(content)
    const icon = tgt.querySelector('i');
    if (content.style.maxHeight){
      if (icon != null && icon.classList == "fas fa-minus") {
        icon.classList.remove("fa-minus");
        icon.classList.add("fa-plus");
      }
      content.style.maxHeight = null;
    } else {
      if (icon != null && icon.classList == "fas fa-plus") {
        icon.classList.remove("fa-plus");
        icon.classList.add("fa-minus");
      }
      content.style.maxHeight = content.scrollHeight + "px";
    }
  }

  const allCollapsable = document.querySelectorAll('.collapsable');
  allCollapsable.forEach ((collapsable) => {
    collapsable.addEventListener('click', collapse);
  });

}

module.exports = (collapser);
