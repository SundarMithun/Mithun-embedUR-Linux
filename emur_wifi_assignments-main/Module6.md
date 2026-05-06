# Module 6 – Wi-Fi Security Fundamentals

### Question: What are the pillars of Wi-Fi security?

Answer:
Wi-Fi security is built on three core principles:

- Confidentiality:
  Ensures that transmitted data remains private and cannot be accessed by unauthorized users.  
  Achieved using encryption protocols like WPA2 and WPA3.  

- Integrity:
  Guarantees that data is not altered or tampered with during transmission.  
  Mechanisms like Message Integrity Codes (MIC) help detect modifications.  

- Authenticity:
  Verifies the identity of users or devices before allowing access.  
  Implemented through PSK or enterprise authentication (802.1X).  

Together, these ensure secure and reliable wireless communication.

---

### Question: What is the difference between authentication and encryption in Wi-Fi security?

Answer:

- Authentication:
  - Verifies identity of users/devices  
  - Controls who can access the network  
  - Examples: PSK, 802.1X authentication  

- Encryption:
  - Protects data during transmission  
  - Prevents unauthorized data access  
  - Examples: AES, CCMP  

Authentication grants access, while encryption secures the communication after access is granted.

---

### Question: Compare WEP, WPA, WPA2, and WPA3.

Answer:

- WEP:
  - Uses RC4 with static keys  
  - Weak IV (24-bit)  
  - Easily breakable  
  - Obsolete  

- WPA:
  - Introduced as a temporary fix  
  - Uses TKIP with RC4  
  - Better than WEP but still vulnerable  

- WPA2:
  - Uses AES-based CCMP  
  - Strong encryption and integrity  
  - Supports 4-way handshake  
  - Widely adopted  

- WPA3:
  - Uses SAE (Simultaneous Authentication of Equals)  
  - Protects against offline attacks  
  - Provides forward secrecy  
  - Strongest current standard  

---

### Question: Why is WEP considered insecure?

Answer:
- Uses static encryption keys  
- Very short initialization vector (24-bit)  
- Vulnerable RC4 implementation  
- Easily cracked using common tools  

Modern standards (WPA2/WPA3) address these issues with stronger encryption and dynamic keys.

---

### Question: Why was WPA2 introduced?

Answer:
WPA2 was developed to replace WEP and WPA by providing stronger and standardized security.

Key improvements:
- AES-based encryption  
- CCMP for integrity and confidentiality  
- Secure key management  
- Standardized 4-way handshake  

It became the industry standard for secure Wi-Fi.

---

### Question: What is the role of the Pairwise Master Key (PMK)?

Answer:
- PMK is the base key used in WPA/WPA2 security  
- Derived from passphrase (Personal) or authentication server (Enterprise)  
- Not transmitted over the network  

Function:
- Used to derive PTK during the 4-way handshake  
- Ensures secure session key generation  

---

### Question: How does the 4-way handshake ensure mutual authentication?

Answer:
- AP sends ANonce to client  
- Client generates SNonce and computes PTK  
- Client sends SNonce and MIC  
- AP verifies MIC using its own PTK  

Result:
- Both confirm possession of the same PMK  
- Secure session keys are generated  
- Mutual authentication is achieved  

---

### Question: What happens if the wrong passphrase is used?

Answer:
- Client derives incorrect PMK and PTK  
- MIC validation fails at the AP  
- Handshake is terminated  
- Connection is denied  

This prevents unauthorized access.

---

### Question: What problem does 802.1X solve?

Answer:
802.1X provides port-based network access control.

It solves:
- Unauthorized network access  
- Lack of centralized authentication  
- Weak credential management  

Features:
- Uses RADIUS server  
- Supports per-user authentication  
- Enforces network access policies  

---

### Question: How does 802.1X enhance wireless security?

Answer:
- Uses EAP-based secure authentication methods  
- Generates unique session keys per user  
- Enables role-based access and VLAN assignment  
- Works with WPA2/WPA3-Enterprise  

Benefits:
- Strong authentication  
- Better access control  
- Scalable enterprise security  
