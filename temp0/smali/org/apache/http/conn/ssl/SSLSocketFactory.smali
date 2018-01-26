.class public Lorg/apache/http/conn/ssl/SSLSocketFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final SSL:Ljava/lang/String; = "SSL"

.field public static final SSLV2:Ljava/lang/String; = "SSLv2"

.field public static final STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private volatile hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private final nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    sput-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 152
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 155
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    sput-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createDefaultSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 334
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "keystore"    # Ljava/security/KeyStore;
    .param p3, "keystorePassword"    # Ljava/lang/String;
    .param p4, "truststore"    # Ljava/security/KeyStore;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .param p6, "nameResolver"    # Lorg/apache/http/conn/scheme/HostNameResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/ssl/TrustStrategy;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "keystore"    # Ljava/security/KeyStore;
    .param p3, "keystorePassword"    # Ljava/lang/String;
    .param p4, "truststore"    # Ljava/security/KeyStore;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .param p6, "trustStrategy"    # Lorg/apache/http/conn/ssl/TrustStrategy;
    .param p7, "hostnameVerifier"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-static/range {p1 .. p6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, v0, p7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 263
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "keystore"    # Ljava/security/KeyStore;
    .param p3, "keystorePassword"    # Ljava/lang/String;
    .param p4, "truststore"    # Ljava/security/KeyStore;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .param p6, "hostnameVerifier"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 246
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 8
    .param p1, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 283
    const-string v1, "TLS"

    sget-object v7, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/ssl/TrustStrategy;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;)V
    .locals 8
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keystorePassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 277
    const-string v1, "TLS"

    sget-object v7, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/ssl/TrustStrategy;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 8
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keystorePassword"    # Ljava/lang/String;
    .param p3, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 270
    const-string v1, "TLS"

    sget-object v7, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/ssl/TrustStrategy;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 306
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lorg/apache/http/conn/scheme/HostNameResolver;)V
    .locals 1
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "nameResolver"    # Lorg/apache/http/conn/scheme/HostNameResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 317
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 318
    iput-object p2, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 319
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 1
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "hostnameVerifier"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 328
    iput-object p2, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 330
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ssl/TrustStrategy;)V
    .locals 8
    .param p1, "trustStrategy"    # Lorg/apache/http/conn/ssl/TrustStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 302
    const-string v1, "TLS"

    sget-object v7, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/ssl/TrustStrategy;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ssl/TrustStrategy;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 8
    .param p1, "trustStrategy"    # Lorg/apache/http/conn/ssl/TrustStrategy;
    .param p2, "hostnameVerifier"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 293
    const-string v1, "TLS"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/ssl/TrustStrategy;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 294
    return-void
.end method

.method private static createDefaultSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 7

    .prologue
    .line 209
    :try_start_0
    const-string v0, "TLS"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 210
    :catch_0
    move-exception v6

    .line 211
    .local v6, "ex":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failure initializing default SSL context"

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;
    .locals 8
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keystorePassword"    # Ljava/lang/String;
    .param p3, "truststore"    # Ljava/security/KeyStore;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "trustStrategy"    # Lorg/apache/http/conn/ssl/TrustStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 181
    if-nez p0, :cond_0

    .line 182
    const-string p0, "TLS"

    .line 184
    :cond_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 186
    .local v2, "kmfactory":Ljavax/net/ssl/KeyManagerFactory;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    :goto_0
    invoke-virtual {v2, p1, v7}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 187
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    .line 188
    .local v1, "keymanagers":[Ljavax/net/ssl/KeyManager;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    .line 190
    .local v5, "tmfactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v5, p3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 191
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v6

    .line 192
    .local v6, "trustmanagers":[Ljavax/net/ssl/TrustManager;
    if-eqz v6, :cond_3

    if-eqz p5, :cond_3

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 194
    aget-object v4, v6, v0

    .line 195
    .local v4, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v7, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v7, :cond_1

    .line 196
    new-instance v7, Lorg/apache/http/conn/ssl/TrustManagerDecorator;

    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    .end local v4    # "tm":Ljavax/net/ssl/TrustManager;
    invoke-direct {v7, v4, p5}, Lorg/apache/http/conn/ssl/TrustManagerDecorator;-><init>(Ljavax/net/ssl/X509TrustManager;Lorg/apache/http/conn/ssl/TrustStrategy;)V

    aput-object v7, v6, v0

    .line 193
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    .end local v0    # "i":I
    .end local v1    # "keymanagers":[Ljavax/net/ssl/KeyManager;
    .end local v5    # "tmfactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v6    # "trustmanagers":[Ljavax/net/ssl/TrustManager;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 202
    .restart local v1    # "keymanagers":[Ljavax/net/ssl/KeyManager;
    .restart local v5    # "tmfactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v6    # "trustmanagers":[Ljavax/net/ssl/TrustManager;
    :cond_3
    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 203
    .local v3, "sslcontext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v3, v1, v6, p4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 204
    return-object v3
.end method

.method public static getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/apache/http/conn/ConnectTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "local":Ljava/net/InetSocketAddress;
    if-nez p4, :cond_0

    if-lez p5, :cond_2

    .line 483
    :cond_0
    if-gez p5, :cond_1

    .line 484
    const/4 p5, 0x0

    .line 486
    :cond_1
    new-instance v0, Ljava/net/InetSocketAddress;

    .end local v0    # "local":Ljava/net/InetSocketAddress;
    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 489
    .restart local v0    # "local":Ljava/net/InetSocketAddress;
    :cond_2
    iget-object v3, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v3, :cond_3

    .line 490
    iget-object v3, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v3, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 494
    .local v2, "remoteAddress":Ljava/net/InetAddress;
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 495
    .local v1, "remote":Ljava/net/InetSocketAddress;
    invoke-virtual {p0, p1, v1, v0, p6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v3

    return-object v3

    .line 492
    .end local v1    # "remote":Ljava/net/InetSocketAddress;
    .end local v2    # "remoteAddress":Ljava/net/InetAddress;
    :cond_3
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .restart local v2    # "remoteAddress":Ljava/net/InetAddress;
    goto :goto_0
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 12
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "remoteAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "localAddress"    # Ljava/net/InetSocketAddress;
    .param p4, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/apache/http/conn/ConnectTimeoutException;
        }
    .end annotation

    .prologue
    .line 358
    if-nez p2, :cond_0

    .line 359
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Remote address may not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 361
    :cond_0
    if-nez p4, :cond_1

    .line 362
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "HTTP parameters may not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 364
    :cond_1
    if-eqz p1, :cond_5

    move-object v7, p1

    .line 365
    .local v7, "sock":Ljava/net/Socket;
    :goto_0
    if-eqz p3, :cond_2

    .line 366
    invoke-static/range {p4 .. p4}, Lorg/apache/http/params/HttpConnectionParams;->getSoReuseaddr(Lorg/apache/http/params/HttpParams;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 367
    invoke-virtual {v7, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 370
    :cond_2
    invoke-static/range {p4 .. p4}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 371
    .local v0, "connTimeout":I
    invoke-static/range {p4 .. p4}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v6

    .line 374
    .local v6, "soTimeout":I
    :try_start_0
    invoke-virtual {v7, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 375
    invoke-virtual {v7, p2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "hostname":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 383
    .local v4, "port":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 384
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 385
    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 390
    :cond_3
    instance-of v9, v7, Ljavax/net/ssl/SSLSocket;

    if-eqz v9, :cond_6

    move-object v8, v7

    .line 391
    check-cast v8, Ljavax/net/ssl/SSLSocket;

    .line 395
    .local v8, "sslsock":Ljavax/net/ssl/SSLSocket;
    :goto_1
    iget-object v9, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    if-eqz v9, :cond_4

    .line 397
    :try_start_1
    iget-object v9, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v9, v2, v8}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    :cond_4
    return-object v8

    .line 364
    .end local v0    # "connTimeout":I
    .end local v2    # "hostname":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "soTimeout":I
    .end local v7    # "sock":Ljava/net/Socket;
    .end local v8    # "sslsock":Ljavax/net/ssl/SSLSocket;
    :cond_5
    new-instance v7, Ljava/net/Socket;

    invoke-direct {v7}, Ljava/net/Socket;-><init>()V

    goto :goto_0

    .line 376
    .restart local v0    # "connTimeout":I
    .restart local v6    # "soTimeout":I
    .restart local v7    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 377
    .local v1, "ex":Ljava/net/SocketTimeoutException;
    new-instance v9, Lorg/apache/http/conn/ConnectTimeoutException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connect to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " timed out"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 393
    .end local v1    # "ex":Ljava/net/SocketTimeoutException;
    .restart local v2    # "hostname":Ljava/lang/String;
    .restart local v4    # "port":I
    .restart local v5    # "s":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v10, 0x1

    invoke-virtual {v9, v7, v2, v4, v10}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v8

    check-cast v8, Ljavax/net/ssl/SSLSocket;

    .restart local v8    # "sslsock":Ljavax/net/ssl/SSLSocket;
    goto :goto_1

    .line 399
    :catch_1
    move-exception v3

    .line 401
    .local v3, "iox":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v8}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 402
    :goto_2
    throw v3

    .line 401
    :catch_2
    move-exception v9

    goto :goto_2
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 452
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 456
    :cond_0
    return-object v0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 424
    if-nez p1, :cond_0

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_1

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 2
    .param p1, "hostnameVerifier"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 461
    if-nez p1, :cond_0

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hostname verifier may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    iput-object p1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 465
    return-void
.end method
