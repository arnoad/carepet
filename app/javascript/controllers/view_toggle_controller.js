import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["mapSection", "listSection"];

  connect() {
    console.log("Hey yo")
    console.log(this.mapSectionTarget)

    // Get the mapTab and listTab elements
    const mapTab = document.querySelector('.fa-location-dot');
    const listTab = document.querySelector('.fa-list-ul');

    this.showMapView();
  }

  showMapView() {
    this.mapSectionTarget.style.display = "block";
    this.listSectionTarget.style.display = "none";
  }

  showListView() {

    this.mapSectionTarget.style.display = "none";
    this.listSectionTarget.style.display = "block";
  }
}
