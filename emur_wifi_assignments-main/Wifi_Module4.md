# Module 4 – MAC Layer in WLAN

### Question: What is the significance of the MAC layer and where is it positioned in the OSI model?

Answer:
The Medium Access Control layer is part of Layer 2, the Data Link Layer, in the OSI model. It is one of the key layers in Wi-Fi because it decides how devices share the wireless medium without interfering with each other too much.

Significance:
- Controls channel access among multiple devices
- Reduces the chance of collisions
- Handles addressing and reliable frame delivery
- Maintains proper frame order

Position:
- Sits between the Physical Layer and the Network Layer
- Works closely with the PHY layer for transmission
- Supports higher layers by managing how frames are exchanged

---

### Question: Describe the frame format of the 802.11 MAC header and its fields.

Answer:
The 802.11 MAC frame contains several fields, and each one contributes to how wireless frames are identified, delivered, and verified.

- Frame Control:
  Defines the frame type, subtype, and control flags

- Duration/ID:
  Tells how long the medium should remain reserved

- Address 1:
  Destination address

- Address 2:
  Source address

- Address 3:
  Usually carries the BSSID or AP address

- Sequence Control:
  Helps with ordering and duplicate detection

- Address 4:
  Used in special cases such as mesh or bridging scenarios

- Frame Body:
  Carries the actual payload

- FCS (Frame Check Sequence):
  Used to detect transmission errors

---

### Question: List MAC layer functionalities across Management, Control, and Data planes.

Answer:

- Management Plane:
  - Discovery through beacons and probe frames
  - Association and disassociation handling
  - Authentication and key-related operations

- Control Plane:
  - RTS/CTS exchanges to reduce collision issues
  - ACK and Block ACK for reliability
  - Coordination of power management behavior

- Data Plane:
  - Frame forwarding and delivery
  - Fragmentation and reassembly when required
  - QoS support for prioritized traffic
  - Encryption and decryption of user data
  - Error handling during transmission

---

### Question: Explain the scanning process and its types.

Answer:
Scanning is how a client discovers nearby wireless networks before connecting.

Types:

- Passive Scanning:
  - The client listens for beacon frames
  - No probe frames are sent
  - Uses less power but usually takes more time

- Active Scanning:
  - The client sends probe requests
  - Access points respond with probe responses
  - Faster discovery, but it consumes more energy

- Hybrid Scanning:
  - Combines both passive listening and active probing
  - Balances speed and power usage

---

### Question: Briefly explain the client association process.

Answer:
Association is the step where a client formally joins an access point after discovering and selecting it.

Steps:
- The client scans for available networks
- It chooses the access point it wants to join
- Authentication is performed
- An association request is sent, including capability information
- The AP replies with an association response

After this, normal data exchange can begin.

---

### Question: Explain the EAPOL 4-way handshake and the keys involved.

Answer:
The EAPOL 4-way handshake is used in WPA and WPA2 networks to prove that both sides know the correct key material and to create session keys.

Steps:
1. The AP sends a nonce to the client
2. The client creates its own nonce and sends proof of key knowledge
3. The AP sends the Group Temporal Key and confirms the session
4. The client acknowledges the final step

Keys:

- PTK (Pairwise Transient Key):
  - Used for unicast encryption
  - Derived from the shared secret and the nonces

- GTK (Group Temporal Key):
  - Used for broadcast and multicast traffic

---

### Question: Describe power-saving mechanisms in the MAC layer.

Answer:
Power-saving features help wireless devices conserve battery by reducing the time they stay fully active.

Mechanisms:

- Power Save Mode:
  - The device sleeps at intervals
  - It wakes up to check buffered data

- DTIM (Delivery Traffic Indication Map):
  - The AP tells clients when broadcast or multicast data is waiting

- U-APSD:
  - Supports more adaptive sleep and wake behavior
  - Is usually more efficient than legacy methods

Types:
- Legacy Power Save: Uses fixed sleep intervals
- Fast Power Save: Uses more dynamic scheduling

---

### Question: Explain different medium access control methods.

Answer:

- CSMA/CA:
  - Devices listen before sending
  - Backoff timers help avoid collisions

- RTS/CTS:
  - A handshake that reduces hidden-node problems

- TDMA:
  - Devices transmit in assigned time slots

- OFDMA:
  - Frequency resources are divided among multiple users

- Polling:
  - The AP decides which device may transmit

- CDMA:
  - Different codes allow multiple transmissions at once

---

### Question: What is Block ACK and its advantages?

Answer:
Block ACK is a mechanism where one acknowledgment message covers multiple transmitted frames.

Advantages:
- Cuts down acknowledgment overhead
- Improves transmission efficiency
- Helps raise throughput when traffic volume is high

---

### Question: Explain A-MSDU, A-MPDU, and A-MSDU within A-MPDU.

Answer:

- A-MSDU:
  - Combines multiple MSDUs into one larger unit
  - Reduces repeated header overhead

- A-MPDU:
  - Aggregates multiple MPDUs into one transmission
  - Improves efficiency and reliability

- A-MSDU within A-MPDU:
  - Uses both aggregation methods together
  - Helps maximize throughput while keeping overhead lower
