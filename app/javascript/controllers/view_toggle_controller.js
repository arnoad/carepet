import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["mapSection", "listSection"];
  static values = {
    showList: {
      type: Boolean,
      default: false,
    },
  }

  connect() {
    console.log("Hey yo")
    console.log(this.showMapValue)
    console.log(this.mapSectionTarget)

    // Get the mapTab and listTab elements
    //const mapTab = document.querySelector('.fa-location-dot');
    //const listTab = document.querySelector('.fa-list-ul');
    const mapTab = document.querySelector('.map-view-button');
    const listTab = document.querySelector('.list-view-button');

    if (this.showListValue) {
      this.showListView();
    } else {
      this.showMapView();
    }
  }

  showMapView() {
    this.mapSectionTarget.style.display = "block";
    this.listSectionTarget.style.display = "none";
    this.lisTab
  }

  showListView() {

    this.mapSectionTarget.style.display = "none";
    this.listSectionTarget.style.display = "block";
  }
}
