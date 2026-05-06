# Module 4 – MAC Layer in WLAN

### Question: What is the significance of the MAC layer and where is it positioned in the OSI model?

Answer:
The Medium Access Control (MAC) layer is a sublayer of the Data Link Layer (Layer 2) in the OSI model.

Significance:
- Controls how devices access the shared communication medium  
- Prevents collisions using coordination mechanisms  
- Handles frame addressing and delivery  
- Ensures proper sequencing of frames  

Position:
- Located between the Physical Layer (Layer 1) and Network Layer (Layer 3)  
- Works closely with the physical layer for transmission and with upper layers for data delivery  

---

### Question: Describe the frame format of the 802.11 MAC header and its fields.

Answer:
The 802.11 MAC frame consists of multiple fields, each serving a specific purpose:

- Frame Control:
  Defines frame type and control information  

- Duration/ID:
  Indicates how long the channel will be reserved  

- Address 1:
  Destination MAC address  

- Address 2:
  Source MAC address  

- Address 3:
  Typically represents the BSSID or AP address  

- Sequence Control:
  Maintains frame order and detects duplicates  

- Address 4:
  Used in advanced scenarios like mesh networks  

- Frame Body:
  Contains actual payload data  

- FCS (Frame Check Sequence):
  Used for error detection  

---

### Question: List MAC layer functionalities across Management, Control, and Data planes.

Answer:

- Management Plane:
  - Network discovery (beacons, probes)  
  - Association and disassociation  
  - Authentication and key handling  

- Control Plane:
  - RTS/CTS for collision avoidance  
  - ACK and Block ACK for reliability  
  - Power management coordination  

- Data Plane:
  - Frame transmission and forwarding  
  - Fragmentation and reassembly  
  - QoS handling  
  - Encryption and decryption  
  - Error handling  

---

### Question: Explain the scanning process and its types.

Answer:
Scanning is used by clients to discover available wireless networks.

Types:

- Passive Scanning:
  - Client listens for beacon frames  
  - No active transmission  
  - Power-efficient but slower  

- Active Scanning:
  - Client sends probe requests  
  - APs respond with probe responses  
  - Faster but consumes more power  

- Hybrid Scanning:
  - Combines passive listening and active probing  
  - Balances speed and power usage  

---

### Question: Briefly explain the client association process.

Answer:
The association process enables a client to connect to an access point.

Steps:
- Scan and identify available networks  
- Select the appropriate AP  
- Perform authentication (open/shared key)  
- Send association request with capabilities  
- Receive association response from AP  

After successful association, data communication begins.

---

### Question: Explain the EAPOL 4-way handshake and the keys involved.

Answer:
The EAPOL 4-way handshake establishes secure communication in WPA/WPA2 networks.

Steps:
1. AP sends a nonce to the client  
2. Client generates its own nonce and sends it with proof of key knowledge  
3. AP sends Group Temporal Key (GTK) and confirms session  
4. Client acknowledges completion  

Keys:

- PTK (Pairwise Transient Key):
  - Used for encrypting unicast traffic  
  - Derived from nonces and shared secret  

- GTK (Group Temporal Key):
  - Used for broadcast and multicast traffic  

---

### Question: Describe power-saving mechanisms in the MAC layer.

Answer:
Power-saving techniques help conserve battery in wireless devices.

Mechanisms:

- Power Save Mode (PS):
  - Device enters sleep state periodically  
  - Wakes up to check buffered data  

- DTIM (Delivery Traffic Indication Map):
  - AP signals availability of buffered broadcast/multicast data  

- U-APSD:
  - Dynamically controls wake/sleep cycles  
  - More efficient than traditional methods  

Types:
- Legacy Power Save: Fixed sleep intervals  
- Fast Power Save: Adaptive and dynamic sleep scheduling  

---

### Question: Explain different medium access control methods.

Answer:

- CSMA/CA:
  - Devices sense medium before transmission  
  - Uses backoff timers to avoid collisions  

- RTS/CTS:
  - Prevents hidden node collisions using handshake  

- TDMA:
  - Assigns fixed time slots to devices  

- OFDMA:
  - Divides frequency into subcarriers for multiple users  

- Polling:
  - AP controls transmission by querying devices  

- CDMA:
  - Uses unique codes for simultaneous transmissions  

---

### Question: What is Block ACK and its advantages?

Answer:
Block ACK allows acknowledgment of multiple frames using a single response.

Advantages:
- Reduces acknowledgment overhead  
- Improves transmission efficiency  
- Increases throughput in high-data scenarios  

---

### Question: Explain A-MSDU, A-MPDU, and A-MSDU within A-MPDU.

Answer:

- A-MSDU:
  - Combines multiple MSDUs into one frame  
  - Reduces header overhead  

- A-MPDU:
  - Aggregates multiple MPDUs into one transmission  
  - Improves efficiency and reliability  

- A-MSDU within A-MPDU:
  - Hybrid aggregation technique  
  - Maximizes throughput by combining both methods  
