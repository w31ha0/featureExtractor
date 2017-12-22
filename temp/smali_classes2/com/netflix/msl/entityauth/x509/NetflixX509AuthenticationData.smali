.class public Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;
.super Lcom/netflix/msl/entityauth/EntityAuthenticationData;
.source "NetflixX509AuthenticationData.java"


# static fields
.field public static final KEY_X509_CERT:Ljava/lang/String; = "x509certificate"

.field public static final KEY_X509_CHAIN:Ljava/lang/String; = "x509chain"

.field public static final KEY_X509_CHAIN_IDENTITY:Ljava/lang/String; = "identity"


# instance fields
.field private certType:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

.field private final certs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private identity:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/msl/io/MslObject;)V
    .locals 5

    .prologue
    .line 133
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->X509:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 138
    :try_start_0
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 150
    :try_start_1
    const-string/jumbo v0, "x509certificate"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const-string/jumbo v0, "x509certificate"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-----END CERTIFICATE-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    sget-object v1, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;->SINGLE:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    iput-object v1, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certType:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v0

    .line 171
    :goto_0
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certs:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 173
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->available()I

    move-result v0

    if-lez v0, :cond_2

    .line 176
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 177
    iget-object v4, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    :try_start_4
    new-instance v2, Lcom/netflix/msl/MslCryptoException;

    sget-object v3, Lcom/netflix/msl/MslError;->X509CERT_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 189
    :catch_1
    move-exception v0

    .line 190
    new-instance v2, Lcom/netflix/msl/MslCryptoException;

    sget-object v3, Lcom/netflix/msl/MslError;->X509CERT_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 139
    :catch_2
    move-exception v0

    .line 140
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "No certificate X.509 certificate factory."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 155
    :cond_0
    :try_start_5
    const-string/jumbo v0, "x509chain"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const-string/jumbo v0, "x509chain"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "-----BEGIN CERTIFICATE-----(?!\n)"

    const-string/jumbo v3, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string/jumbo v1, "-----END CERTIFICATE-----(?!\n)"

    const-string/jumbo v3, "-----END CERTIFICATE-----\n"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "identity"

    invoke-virtual {p1, v1}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->identity:Ljava/lang/String;

    .line 161
    sget-object v1, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;->CHAIN:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    iput-object v1, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certType:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    move-object v1, v0

    goto :goto_0

    .line 163
    :cond_1
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No x509certificate and no x509chain key found in X.509 authdata JSON object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_5 .. :try_end_5} :catch_3

    .line 165
    :catch_3
    move-exception v0

    .line 166
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "X.509 authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 182
    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->X509CERT_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->identity:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 186
    invoke-virtual {p0}, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->getX509Cert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->identity:Ljava/lang/String;
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_1

    .line 192
    :cond_4
    return-void
.end method

.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->X509:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 103
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certs:Ljava/util/List;

    .line 104
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->identity:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;->SINGLE:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    iput-object v0, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certType:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->X509:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    iput-object v0, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certs:Ljava/util/List;

    .line 119
    iput-object p2, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->identity:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;->CHAIN:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    iput-object v0, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certType:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    .line 121
    return-void
.end method

.method public static pemEncodeCert(ZLjava/lang/StringBuilder;[B)V
    .locals 3

    .prologue
    .line 257
    const-string/jumbo v0, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    if-eqz p0, :cond_0

    .line 259
    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_0
    invoke-static {p2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 262
    if-eqz p0, :cond_2

    .line 263
    const-string/jumbo v1, "(.{64})"

    const-string/jumbo v2, "$1\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :goto_0
    const-string/jumbo v0, "-----END CERTIFICATE-----"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    if-eqz p0, :cond_1

    .line 270
    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_1
    return-void

    .line 266
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static pemEncodeCerts(Ljava/util/List;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 251
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->pemEncodeCert(ZLjava/lang/StringBuilder;[B)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 276
    if-ne p1, p0, :cond_0

    .line 279
    :goto_0
    return v1

    .line 277
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 278
    check-cast v0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;

    .line 279
    invoke-super {p0, p1}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->identity:Ljava/lang/String;

    iget-object v0, v0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->identity:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public getAuthData(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
    .locals 4

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certType:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    sget-object v2, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;->SINGLE:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    if-ne v1, v2, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->getX509Cert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 234
    const-string/jumbo v2, "x509certificate"

    invoke-static {v1}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 244
    :goto_0
    return-object v0

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certType:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    sget-object v2, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;->CHAIN:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    if-ne v1, v2, :cond_1

    .line 236
    const-string/jumbo v1, "x509chain"

    iget-object v2, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certs:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->pemEncodeCerts(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 237
    const-string/jumbo v1, "identity"

    iget-object v2, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->identity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error encoding the X.509 certificate."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 239
    :cond_1
    :try_start_1
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Invalid certificate type."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getCertType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certType:Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData$CertificateProvided;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getX509Cert()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getX509Certs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->certs:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/entityauth/x509/NetflixX509AuthenticationData;->identity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
