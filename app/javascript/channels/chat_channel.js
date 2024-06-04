import consumer from "./consumer"

consumer.subscriptions.create("ChatChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to the chat channel.");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
    console.log("Disconnected from the chat channel.");
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    const dummyMessage = document.querySelector('#dummy_message').cloneNode(true);
    dummyMessage.textContent = data['message'];
    document.querySelector('#messages').appendChild(dummyMessage);
  },

  send_message(data) {
    this.perform('send_message', { message: data });
  }
});
