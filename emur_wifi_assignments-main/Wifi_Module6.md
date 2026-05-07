# Module 6 – Wi-Fi Security Fundamentals

### Question: What are the pillars of Wi-Fi security?

Answer:
Wi-Fi security is usually explained through three major principles.

- Confidentiality:
  Keeps transmitted data private so unauthorized users cannot read it. Encryption standards such as WPA2 and WPA3 provide this protection.

- Integrity:
  Ensures that the data is not altered in transit. Integrity checks such as Message Integrity Codes help detect tampering.

- Authenticity:
  Confirms that the user or device is legitimate before access is granted. This is typically handled by PSK or 802.1X-based authentication.

These three together are the foundation of secure wireless communication.

---

### Question: What is the difference between authentication and encryption in Wi-Fi security?

Answer:

- Authentication:
  - Verifies the identity of the user or device
  - Controls who is allowed onto the network
  - Examples include PSK and 802.1X

- Encryption:
  - Protects the data while it is being transmitted
  - Prevents outsiders from reading the traffic
  - Examples include AES and CCMP

Authentication grants access, while encryption protects the data after access has been granted.

---

### Question: Compare WEP, WPA, WPA2, and WPA3.

Answer:

- WEP:
  - Uses RC4 with static keys
  - Has a weak 24-bit IV
  - Is easy to break
  - Is now obsolete

- WPA:
  - Was introduced as a temporary improvement over WEP
  - Uses TKIP with RC4
  - Is better than WEP but still weak by modern standards

- WPA2:
  - Uses AES-based CCMP
  - Provides stronger confidentiality and integrity
  - Uses the 4-way handshake
  - Became the standard for secure Wi-Fi for many years

- WPA3:
  - Uses SAE for authentication
  - Protects better against offline password attacks
  - Provides forward secrecy
  - Is the strongest widely used Wi-Fi security standard

---

### Question: Why is WEP considered insecure?

Answer:
WEP is considered insecure because of several structural weaknesses.

- It relies on static encryption keys
- Its initialization vector is too short
- Its RC4 usage is vulnerable
- It can be cracked with publicly available tools

Modern standards such as WPA2 and WPA3 fix these problems with stronger key handling and encryption.

---

### Question: Why was WPA2 introduced?

Answer:
WPA2 was introduced to replace WEP and WPA with a stronger and more standardized security design.

Key improvements:
- AES-based encryption
- CCMP for confidentiality and integrity
- Better key management
- A standardized 4-way handshake

Because of these improvements, WPA2 became the common baseline for secure Wi-Fi networks.

---

### Question: What is the role of the Pairwise Master Key (PMK)?

Answer:
The Pairwise Master Key is the base key used in WPA and WPA2 security.

- It may come from a passphrase in personal mode
- It may be derived through a server in enterprise mode
- It is never sent directly over the air

Its role is to support generation of the PTK during the handshake so secure session keys can be created.

---

### Question: How does the 4-way handshake ensure mutual authentication?

Answer:
The 4-way handshake proves that both the client and the AP know the correct secret material.

- The AP sends ANonce to the client
- The client generates SNonce and calculates PTK
- The client sends its proof along with MIC information
- The AP verifies the MIC using its own derived key

Result:
- Both sides confirm they share the same PMK
- Session keys are created securely
- Mutual authentication is achieved

---

### Question: What happens if the wrong passphrase is used?

Answer:
If the wrong passphrase is entered, the client derives the wrong PMK and PTK.

- The MIC check fails on the access point
- The handshake cannot complete
- The connection is rejected

This blocks unauthorized users from joining the network.

---

### Question: What problem does 802.1X solve?

Answer:
802.1X provides port-based access control so only approved users and devices can connect.

It helps solve:
- Unauthorized access
- Lack of centralized authentication
- Weak credential management

It uses a RADIUS server, supports per-user authentication, and enforces access policies consistently.

---

### Question: How does 802.1X enhance wireless security?

Answer:
802.1X improves wireless security by making authentication more controlled and scalable.

- It uses EAP-based secure authentication methods
- It creates unique session keys for users
- It can support role-based access and VLAN assignment
- It works with WPA2-Enterprise and WPA3-Enterprise

Benefits:
- Strong authentication
- Better access control
- Enterprise-friendly security at scale
