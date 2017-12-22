.class public Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationClientFactory;
.super Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;
.source "NetflixX509AuthenticationClientFactory.java"


# instance fields
.field private final authutils:Lcom/netflix/msl/util/AuthenticationUtils;

.field privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->X509:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 49
    iput-object p2, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationClientFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    .line 50
    iput-object p1, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationClientFactory;->privateKey:Ljava/security/PrivateKey;

    .line 51
    return-void
.end method

.method private createCryptoContext(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 6

    .prologue
    .line 89
    invoke-virtual {p4}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 97
    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNIDENTIFIED_ALGORITHM:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Signature Algorithm Name Not Suported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 89
    :sswitch_0
    const-string/jumbo v2, "SHA1withRSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "SHA256withRSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "SHA1withECDSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "SHA256withECDSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 92
    :pswitch_0
    new-instance v0, Lcom/netflix/msl/crypto/RsaCryptoContext;

    invoke-virtual {p4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    sget-object v5, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->SIGN_VERIFY:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/crypto/RsaCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;)V

    .line 95
    :goto_1
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/netflix/msl/crypto/EccCryptoContext;

    invoke-virtual {p4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    sget-object v2, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;->SIGN_VERIFY:Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/netflix/msl/crypto/EccCryptoContext;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Lcom/netflix/msl/crypto/EccCryptoContext$Mode;)V

    goto :goto_1

    .line 89
    :sswitch_data_0
    .sparse-switch
        -0x2cf2e52b -> :sswitch_0
        -0x10b4e48d -> :sswitch_1
        0x437357a9 -> :sswitch_2
        0x4833a8c7 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public createData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;-><init>(Lcom/netflix/msl/io/MslObject;)V

    return-object v0
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 5

    .prologue
    .line 61
    instance-of v0, p2, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incorrect authentication data type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    check-cast p2, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;

    .line 65
    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationClientFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-interface {v1, v0}, Lcom/netflix/msl/util/AuthenticationUtils;->isEntityRevoked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v1, Lcom/netflix/msl/MslError;->ENTITY_REVOKED:Lcom/netflix/msl/MslError;

    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->getX509Cert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object v0

    throw v0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationClientFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationClientFactory;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->INCORRECT_ENTITYAUTH_DATA:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authentication Scheme for Device Type Not Supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationClientFactory;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object v0

    throw v0

    .line 80
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->getX509Cert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationClientFactory;->privateKey:Ljava/security/PrivateKey;

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationClientFactory;->createCryptoContext(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    return-object v0
.end method
