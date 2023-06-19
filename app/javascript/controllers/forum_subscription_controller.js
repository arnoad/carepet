import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"


// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static targets = ["messages"]
  static values ={
    forumId: Number
  }
  connect() {
    console.log(`Connecting to the ActionCable channel with id ${this.forumIdValue}`)
    this.channel = createConsumer().subscriptions.create(
      { channel: "ForumChannel", id: this.forumIdValue },
      { received: (data) => { this.#insertMessage(data)} }
    )
  }

  disconnect(){
    console.log("Disconnecting from the channel...")
    this.channel.unsubscribe()
  }

  resetForm(event) {
    const form = event.target
    form.reset()
  }

  #insertMessage(data){
  this.messagesTarget.insertAdjacentHTML("beforeend", data)
  // scroll to the bottom of messages list
  this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
}
