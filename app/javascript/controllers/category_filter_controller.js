import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["lvl1", "lvl2", "lvl3", "lvl4", "lvl2Loader", "lvl3Loader", "lvl4Loader"]

  connect() {
    const hasReloaded = sessionStorage.getItem("category_page_reloaded_at");
    const now = Date.now();

    if (!hasReloaded || now - parseInt(hasReloaded, 10) > 9000) {
      sessionStorage.setItem("category_page_reloaded_at", now.toString());

      setTimeout(() => {
        window.location.reload();
      }, 1000);
    }
  }

  fetchLvl2() {
    const lvl1Code = this.lvl1Target.value
    this.showLoader(this.lvl2LoaderTarget)

    fetch(`/categories/lvl2?lvl1_code=${lvl1Code}`)
      .then(response => response.json())
      .then(data => {
        this.lvl2Target.innerHTML = '<option value="">Select LVL2</option>'
        this.lvl3Target.innerHTML = '<option value="">Select LVL3</option>'
        this.lvl4Target.innerHTML = '<option value="">Select LVL4</option>'

        data.forEach(item => {
          const option = document.createElement('option')
          option.value = item.code
          option.textContent = `${item.code} | ${item.desc}`
          this.lvl2Target.appendChild(option)
        })
      })
      .catch(error => console.error("LVL2 fetch error:", error))
      .finally(() => this.hideLoader(this.lvl2LoaderTarget))
  }

  fetchLvl3() {
    const lvl2Code = this.lvl2Target.value
    this.showLoader(this.lvl3LoaderTarget)

    fetch(`/categories/lvl3?lvl2_code=${lvl2Code}`)
      .then(response => response.json())
      .then(data => {
        this.lvl3Target.innerHTML = '<option value="">Select LVL3</option>'
        this.lvl4Target.innerHTML = '<option value="">Select LVL4</option>'

        data.forEach(item => {
          const option = document.createElement('option')
          option.value = item.code
          option.textContent = `${item.code} | ${item.desc}`
          this.lvl3Target.appendChild(option)
        })
      })
      .catch(error => console.error("LVL3 fetch error:", error))
      .finally(() => this.hideLoader(this.lvl3LoaderTarget))
  }

  fetchLvl4() {
    const lvl3Code = this.lvl3Target.value
    this.showLoader(this.lvl4LoaderTarget)

    fetch(`/categories/lvl4?lvl3_code=${lvl3Code}`)
      .then(response => response.json())
      .then(data => {
        this.lvl4Target.innerHTML = '<option value="">Select LVL4</option>'

        data.forEach(item => {
          const option = document.createElement('option')
          option.value = item.code
          option.textContent = `${item.code} | ${item.desc}`
          this.lvl4Target.appendChild(option)
        })
      })
      .catch(error => console.error("LVL4 fetch error:", error))
      .finally(() => this.hideLoader(this.lvl4LoaderTarget))
  }

  showLoader(loader) {
    loader.style.display = "inline-block"
  }

  hideLoader(loader) {
    loader.style.display = "none"
  }
}
