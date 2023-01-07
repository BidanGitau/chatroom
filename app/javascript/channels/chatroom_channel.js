import consumer from "./consumer";

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("hellow mfs");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel

    const container = document.querySelector("#message-container");
    document.querySelector(".reset").value = "";
    container.innerHTML += data.message_mod;
  },
});
