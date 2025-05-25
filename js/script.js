document.getElementById("booking-form").addEventListener("submit", function (event) {
    event.preventDefault();

    let formData = new FormData(this);

    fetch("booking.php", {
        method: "POST",
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        alert(data);  // Show response from PHP
        document.getElementById("booking-form").reset();  // Clear form
    })
    .catch(error => console.error("Error:", error));
});
