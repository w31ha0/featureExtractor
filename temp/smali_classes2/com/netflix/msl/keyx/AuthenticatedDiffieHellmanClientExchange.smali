.class public Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanClientExchange;
.super Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;
.source "AuthenticatedDiffieHellmanClientExchange.java"


# instance fields
.field private final presharedKeyStore:Lcom/netflix/msl/entityauth/PresharedKeyStore;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/keyx/DerivationKeyRepository;Lcom/netflix/msl/keyx/DiffieHellmanParameters;Lcom/netflix/msl/util/AuthenticationUtils;Lcom/netflix/msl/entityauth/PresharedKeyStore;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange;-><init>(Lcom/netflix/msl/keyx/DerivationKeyRepository;Lcom/netflix/msl/keyx/DiffieHellmanParameters;Lcom/netflix/msl/util/AuthenticationUtils;)V

    .line 59
    iput-object p4, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanClientExchange;->presharedKeyStore:Lcom/netflix/msl/entityauth/PresharedKeyStore;

    .line 60
    return-void
.end method

.method private wrapBytes(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;[BLjava/lang/String;)[B
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanClientExchange$1;->$SwitchMap$com$netflix$msl$keyx$AbstractAuthenticatedDiffieHellmanExchange$Mechanism:[I

    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    invoke-virtual {p2}, Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 82
    :pswitch_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v1

    .line 84
    invoke-interface {v0, p3, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 86
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_WRAPPING_KEY_MISSING:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanClientExchange;->presharedKeyStore:Lcom/netflix/msl/entityauth/PresharedKeyStore;

    invoke-interface {v0, p4}, Lcom/netflix/msl/entityauth/PresharedKeyStore;->getKeys(Ljava/lang/String;)Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;

    move-result-object v0

    .line 93
    :try_start_0
    iget-object v1, v0, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 94
    iget-object v0, v0, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;->hmacKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 95
    invoke-static {v1, v0}, Lcom/netflix/msl/util/CryptoUtil;->deriveWrappingKey([B[B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :goto_0
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Wrapping key derivation failed."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :catch_1
    move-exception v0

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getHashWrapKeyData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;[BLjava/lang/String;)[B
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/msl/keyx/AuthenticatedDiffieHellmanClientExchange;->wrapBytes(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/AbstractAuthenticatedDiffieHellmanExchange$Mechanism;[BLjava/lang/String;)[B

    move-result-object v0

    .line 72
    :try_start_0
    const-string/jumbo v1, "SHA-384"

    invoke-static {v1}, Lcom/netflix/msl/crypto/CryptoCache;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid Hash algorithm specified SHA-384."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
