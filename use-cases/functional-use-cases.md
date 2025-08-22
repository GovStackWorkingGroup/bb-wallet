# Functional Use Cases

This section contains a non-exhaustive list of sample use cases around building blocks.

## 1. Credential Issuance

### 1.1. Credential Issuance in Mobile Wallet

Robert installs the Wallet on his mobile device and clicks the "Add Credential" option. He sees multiple sections to choose from, each containing various credential issuers.

For example, under IDs, he finds options like National ID, Health ID, Voter ID, Driving License, and Tax ID. Similarly, the Insurance section lists companies like Company A, Company B, and Company C. There are also sections for Graduation Certificates from different universities, High School Certificates from various institutes, and Health Records like Vaccination Certificates.

Robert selects the IDs section and clicks on National ID, which redirects him to an authentication screen. After choosing an authentication method and completing the process, the credential is downloaded to his mobile wallet. Robert then returns to the wallet's home screen and sees his National ID added.

### 1.2. Credential Issuance in Cloud Wallet

Robert opens his browser and navigates to the login screen of the cloud wallet. If Robert has already registered, he simply logs into the wallet or else goes through the registration process. After logging into the wallet, similar to the mobile wallet, Robert can see various sections like IDs, Insurance, Graduation Certificates, High School Certificates, Health Records, etc; and multiple issuers within them.

Robert selects the Graduation Certificate section and selects his Institution, Institute A, which redirects him to an authentication screen for downloading the graduation certificate from Institute A. After choosing an authentication method and completing the process, the credential is downloaded to his cloud wallet. Robert then returns to the home screen of the wallet and sees his graduation certificate added.

## 2. Credential Removal

Robert plans a trip to the Caribbean, purchases flight tickets, and adds the ticket credentials to his wallet. However, due to unforeseen circumstances, he has to cancel the trip. To tidy up his wallet, he decides to remove the ticket credentials:

* Robert navigates to the wallet section where his flight ticket credentials are stored.
* He locates the option to remove the credential and clicks on it.
* A confirmation pop-up appears, prompting Robert to confirm the removal.
* Robert confirms the removal and the flight ticket credential is successfully removed from his wallet.

## 3. Porting Credentials

Robert, in the process of upgrading her phone, needs to transfer all his data, including credentials and documents, to his new device. With no automatic cloud wallet integration available, she follows these steps:

1. **Settings Options**:\
   Accessing the wallet settings on her old phone, Robert finds "Transfer to new device" and "Transfer from another device" options.
2. **Initiate Transfer from Old Phone**:\
   On her old phone, Robert selects "Transfer from another device," generating a QR code with connection details.
3. **Initiate Transfer on New Phone**:\
   Installing the wallet on his new phone, Robert selects "Transfer to new device" and uses the QR code scanner to establish a connection with the old phone.
4. **Credential Selection**:\
   On his old phone, Robert sees a pre-selected list of credentials.
5. **Authenticate and Transfer**:\
   Clicking on "Authenticate & Share" (or "Share" based on security levels), Robert authenticates herself securely.
6. **Completion**:\
   All credentials and documents were successfully transferred to his new phone. However, credentials explicitly bound to the key on the previous phone are no longer bound.
7. **Re-binding**:\
   Robert needs to bind these specific credentials once again due to the change in the device.

## 4. Selective Disclosure

Robert, a 25-year-old, was riding his bike when he was stopped by a Traffic Police officer. Observing Robert's youthful appearance, the officer decided to verify Robert's age since the country has a minimum age limit of 18 for individuals to ride a vehicle.

The officer requested Robert to show his credentials for age verification. In response, Robert accessed his mobile wallet, while the police officer opened his verification application. The officer then initiated an authorization request for Robert's device.

Robert's wallet retrieved the request object, which requested for the claim "ageOver18" from his driving license to be shared. The wallet informed Robert that the Police Officer was seeking confirmation of whether the age was over 18 or not. Considering that his driving license credential contained the claim "ageOver18," Robert authorized the sharing of this information with the police officer.

## 5. Credential Statuses

### 5.1. Suspension and Reactivation

#### Suspension and reactivation of Driving License

Robert was driving rashly and was stopped by a traffic police officer, who initiated a suspension of his driving license and instructed him to pay a fine online or at the court to reactivate it. Consequently, whenever Robert presents his driving license, any verifier can see that it is suspended.&#x20;

Robert then visits the e-Gov Portal, pays the fine, and within seconds, his driving license is reactivated.

#### Suspension and reactivation of Insurance Document

Robert has health insurance that needs to be renewed annually. This year, he missed the payment deadline, causing his insurance document to become suspended (inactive).&#x20;

A month later, Robert realizes his oversight and pays the insurance premium along with a fine. Consequently, his insurance document is reactivated.

### 5.2. Revocation

Robert, a customer of Bank A, holds a bank account for which the bank has issued a digital passbook. This digital passbook is stored securely in Robert's mobile wallet.

Due to work, Robert is moving to another country, so he decides to close his account with Bank A. Upon his request, the bank initiates the account closure process and revokes the associated digital passbook credentials.

Following the revocation, whenever Robert attempts to share the digital passbook with any third-party verifier, the verifier is notified that the credential has been revoked and is no longer valid.

## 6. Sharing of Credentials

### 6.1. Cross Device Sharing

#### Sharing Credentials while entering an Airport

Robert is preparing to travel by flight and has received his boarding pass in his digital wallet. Upon arriving at the airport, he needs to pass through the entrance gate. Robert shares both his boarding pass and national ID from his digital wallet with the airport security system. The system automatically verifies the authenticity of the credentials and matches Robert's identity by using the photograph stored in his national ID credential.

### 6.2. Same Device Sharing

#### e-KYC on an Application on the Same Device

Robert installs a payment wallet application, which requires him to complete an e-KYC (electronic Know Your Customer) process using his national ID. Robert notices an option to authenticate via his digital wallet. He selects this option, which sends a push notification to the digital wallet app installed on his phone. The app opens automatically, and Robert selects his national ID card from the wallet. After performing a local authentication, such as biometric or PIN verification, Robert securely shares his national ID credential with the payment wallet to complete the e-KYC process.

