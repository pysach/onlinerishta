<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Modal OTP Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<style>
  /* ---------- Base ---------- */
  :root {
    --bg1: #6a11cb; --bg2: #2575fc;
    --glass-bg: rgba(255,255,255,0.12);
    --glass-border: rgba(255,255,255,0.3);
    --text: #fff;
    --accent1: #667eea; --accent2: #764ba2;
  }
  /** { box-sizing: border-box; }*/
  /*body {*/
  /*  margin: 0; font-family: "Poppins", sans-serif;*/
  /*  background: linear-gradient(135deg, var(--bg1), var(--bg2));*/
  /*  min-height: 100vh; display: grid; place-items: center; color: var(--text);*/
  /*}*/
  /*body.dark { background: linear-gradient(135deg, #1e1e1e, #101010); }*/

  /* ---------- Trigger ---------- */
  .login-trigger {
    background: linear-gradient(90deg, var(--accent1), var(--accent2));
    color: #fff; border: 0; padding: 12px 18px; border-radius: 12px;
    font-weight: 600; cursor: pointer; box-shadow: 0 10px 30px #0004;
  }
  .login-trigger:hover { transform: translateY(-2px); }

  /* ---------- Modal ---------- */
  .modal {
    position: fixed; inset: 0;
    display: none; align-items: center; justify-content: center;
    background: #0007; z-index: 1000;
  }
  .modal.open { display: flex; }
  .modal-card {
    width: 380px; max-width: 92vw;
    background: var(--glass-bg);
    border: 1px solid var(--glass-border);
    backdrop-filter: blur(14px);
    border-radius: 18px; padding: 28px; text-align: center;
    animation: pop 0.35s ease;
    box-shadow: 0 20px 60px #0006;
  }
  @keyframes pop { from { transform: scale(0.92); opacity: 0 } to { transform: scale(1); opacity: 1 } }

  .modal-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 10px; }
  .modal-title {     color: #db979d;
    font-size: 28px;
    font-weight: 600;}
  .close-btn { background: #fff2; border: 0; color: #fff; border-radius: 10px; padding: 6px 10px; cursor: pointer; }

  .subtitle { color: #f1f1f1; font-size: 13px; margin-bottom: 16px; }
  input[type="email"] {
    width: 100%; padding: 12px; border-radius: 12px; border: none;
    text-align: center; margin-bottom: 14px; font-size: 16px;
    background: rgba(255,255,255,0.22); color: #fff; outline: none;
    border: 1.8px solid rgba(255,255,255,0.35);
  }
  input::placeholder { color: #eef; }

  .btn {
    width: 100%; padding: 12px; border-radius: 12px; border: none;
    cursor: pointer; font-size: 16px; color: #fff;
    background: linear-gradient(90deg, var(--accent1), var(--accent2));
    transition: 0.2s;
  }
  .btn:hover { transform: translateY(-2px); box-shadow: 0 10px 25px #0005; }

  /* ---------- OTP ---------- */
  .otp-container { display: flex; justify-content: center; gap: 8px; margin: 18px 0; }
  .otp-input {
    width: 34px; height: 34px; text-align: center;
    font-size: 16px; font-weight: 600;
    border-radius: 8px; border: 1.8px solid rgba(255,255,255,0.35);
    background: rgba(255,255,255,0.22); color: #fff; outline: none;
  }
  .otp-input:focus { border-color: #fff; box-shadow: 0 0 6px #ffffff70; }

  .resend-btn { background: transparent; border: none; color: #fff; text-decoration: underline; display: none; cursor: pointer; }
  .status { min-height: 22px; font-size: 13px; margin-top: 8px; }
  .ok { color: #b8ffcc; } .err { color: #ffd4d4; }

  .toggle { position: fixed; top: 16px; right: 16px; background: #fff3; color: #fff; padding: 8px 12px; border-radius: 999px; cursor: pointer; }

  @media (max-width: 480px) {
    .otp-input { width: 9vw; height: 9vw; font-size: 4.5vw; border-radius: 6px; }
    .otp-container { gap: 2.5vw; }
  }
</style>
</head>
<body>
  <div class="toggle" id="toggle">🌙</div>

  <!-- Trigger -->
  <button class="login-trigger" id="openLogin">Login with your Registered Email OTP</button>

  <!-- Login Modal -->
  <div class="modal" id="loginModal" aria-hidden="true" role="dialog" aria-modal="true">
    <div class="modal-card" role="document">
      <div class="modal-header">
        <div class="modal-title">🔐 Onlinerishta.in</div>
        <button class="close-btn" id="closeLogin" aria-label="Close">✕</button>
      </div>
      <!--<p class="subtitle">Fast • Secure • Modern Authentication</p>-->

      <div id="status" class="status"></div>

      <!-- Email -->
      <div id="emailSection">
        <input type="email" id="email" placeholder="Enter Your Registered Email" autocomplete="email" />
        <button class="btn" id="sendBtn">Send OTP</button>
      </div>

      <!-- OTP -->
      <div id="otpSection" style="display:none;">
        <div class="otp-container">
          <input class="otp-input" maxlength="1" id="otp1" inputmode="numeric" />
          <input class="otp-input" maxlength="1" id="otp2" inputmode="numeric" />
          <input class="otp-input" maxlength="1" id="otp3" inputmode="numeric" />
          <input class="otp-input" maxlength="1" id="otp4" inputmode="numeric" />
          <input class="otp-input" maxlength="1" id="otp5" inputmode="numeric" />
          <input class="otp-input" maxlength="1" id="otp6" inputmode="numeric" />
        </div>

        <button class="btn" id="verifyBtn">Verify OTP</button>
        <p style="margin-top:10px;">Resend OTP in <span id="timer">30</span>s</p>
        <button class="resend-btn" id="resendBtn">Resend OTP</button>
      </div>
    </div>
  </div>

<script>
  // Dark toggle
  document.getElementById("toggle").addEventListener("click", () => {
    document.body.classList.toggle("dark");
  });

  // Modal open/close + focus trap
  const modal = document.getElementById("loginModal");
  const openBtn = document.getElementById("openLogin");
  const closeBtn = document.getElementById("closeLogin");
  openBtn.addEventListener("click", () => {
    modal.classList.add("open");
    setTimeout(() => document.getElementById("email").focus(), 250);
  });
  closeBtn.addEventListener("click", () => { modal.classList.remove("open"); });
  modal.addEventListener("click", (e) => {
    if (e.target === modal) modal.classList.remove("open"); // click outside to close
  });

  // Elements
  const statusEl = document.getElementById("status");
  const emailSection = document.getElementById("emailSection");
  const otpSection = document.getElementById("otpSection");
  const sendBtn = document.getElementById("sendBtn");
  const verifyBtn = document.getElementById("verifyBtn");
  const resendBtn = document.getElementById("resendBtn");

  // Timer
  let timerInterval;
  function startTimer() {
    let sec = 30;
    document.getElementById("timer").innerText = sec;
    clearInterval(timerInterval);
    timerInterval = setInterval(() => {
      sec--;
      document.getElementById("timer").innerText = sec;
      if (sec <= 0) {
        clearInterval(timerInterval);
        resendBtn.style.display = "inline";
      }
    }, 1000);
  }

  // Show OTP section
  function showOTPSection() {
    emailSection.style.display = "none";
    otpSection.style.display = "block";
    setTimeout(() => document.getElementById("otp1").focus(), 150);
    startTimer();
  }

  // OTP inputs auto-move/paste/autosubmit
  const inputs = ["otp1","otp2","otp3","otp4","otp5","otp6"].map(id => document.getElementById(id));
  inputs.forEach((input, idx) => {
    input.addEventListener("input", () => {
      input.value = input.value.replace(/\D/g, "");
      if (input.value && idx < 5) inputs[idx + 1].focus();
      checkSubmit();
    });
    input.addEventListener("keydown", (e) => {
      if (e.key === "Backspace" && !input.value && idx > 0) inputs[idx - 1].focus();
    });
    input.addEventListener("paste", (e) => {
      e.preventDefault();
      const paste = e.clipboardData.getData("text");
      if (/^\d{6}$/.test(paste)) {
        paste.split("").forEach((ch, i) => inputs[i].value = ch);
        inputs[5].focus(); checkSubmit();
      }
    });
  });
  function currentOTP() { return inputs.map(i => i.value).join(""); }
  function checkSubmit() {
    const otp = currentOTP();
    if (otp.length === 6) setTimeout(() => verifyOTP(), 150);
  }

  // Send OTP
  sendBtn.addEventListener("click", async () => {
    const email = document.getElementById("email").value.trim();
    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
      statusEl.textContent = "Please enter a valid email."; statusEl.className = "status err"; return;
    }
    statusEl.textContent = "Sending OTP..."; statusEl.className = "status";
    try {
      const res = await fetch("send_otp.php", {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: "email=" + encodeURIComponent(email)
      });
      const data = await res.text();
      if (data === "OK") {
        statusEl.textContent = "OTP sent. Check your email."; statusEl.className = "status ok";
        showOTPSection();
      } else {
        statusEl.textContent = data || "Failed to send OTP."; statusEl.className = "status err";
      }
    } catch {
      statusEl.textContent = "Network error."; statusEl.className = "status err";
    }
  });

  // Resend
  resendBtn.addEventListener("click", () => {
    resendBtn.style.display = "none";
    document.getElementById("emailSection").style.display = "block";
    document.getElementById("otpSection").style.display = "none";
    sendBtn.click();
  });

  // Verify OTP
  async function verifyOTP() {
    const otp = currentOTP();
    if (!/^\d{6}$/.test(otp)) { statusEl.textContent = "Enter the 6-digit OTP."; statusEl.className = "status err"; return; }
    statusEl.textContent = "Verifying..."; statusEl.className = "status";
    try {
      const res = await fetch("verify_otp.php", {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: "otp=" + encodeURIComponent(otp)
      });
      const data = await res.text();
      if (data === "OK") {
        statusEl.textContent = "Login successful."; statusEl.className = "status ok";
        // Example: redirect to dashboard after a short delay
        setTimeout(() => window.location.href = "eprofile.php", 2000);
//         setTimeout(() => {
//   window.location.href = 'https://onlinerishta.in/profile.php';
// }, 3000);

      } else {
        statusEl.textContent = data || "Invalid or expired OTP."; statusEl.className = "status err";
      }
    } catch {
      statusEl.textContent = "Network error."; statusEl.className = "status err";
    }
  }
</script>
</body>
</html>