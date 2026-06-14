{% hint style="info" %} This requirement can be fulfilled only if the
presentation is not signed but secured using the HMAC (Hash-based
Message Authentication Code). {% endhint %}

{% hint style="info" %} This requirement would require using ECDH/HMAC
to cryptographically protect the credential, as this process involves a
public key provided by the Verifier. This requires an active, trusted
component to create the credential on demand, {% endhint %}

{% @govstack-visualization-plugin/govstack-visualization-plugin source="https://govstack.categulario.xyz/src/wallet/functionalities/presenting-a-credential.yaml" %}
