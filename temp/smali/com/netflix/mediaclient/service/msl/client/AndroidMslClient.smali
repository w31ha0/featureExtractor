.class public final Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;
.super Ljava/lang/Object;
.source "AndroidMslClient.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/UserCredentialProvider;
.implements Lcom/netflix/msl/client/KeyRequestDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/mediaclient/servicemgr/UserCredentialProvider;",
        "Lcom/netflix/msl/client/KeyRequestDataProvider",
        "<",
        "Lcom/netflix/msl/keyx/WidevineKeyRequestData;",
        ">;"
    }
.end annotation


# static fields
.field private static final CS_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_BUFFER_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "nf_msl"

.field private static final TIMEOUT_MS:I = 0x2710


# instance fields
.field private configuration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private context:Landroid/content/Context;

.field private esnProvider:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

.field private messageDebugContext:Lcom/netflix/msl/msg/MessageDebugContext;

.field private mslControl:Lcom/netflix/msl/msg/MslControl;

.field private mslCtx:Lcom/netflix/msl/client/ClientMslContext;

.field private mslEncoderFactory:Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;

.field private mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

.field private rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

.field private urlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Lcom/netflix/msl/util/Base64Secure;

    invoke-direct {v0}, Lcom/netflix/msl/util/Base64Secure;-><init>()V

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->setImpl(Lcom/netflix/msl/util/Base64$Base64Impl;)V

    .line 151
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslEncoderFactory:Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;

    .line 153
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->context:Landroid/content/Context;

    .line 154
    new-instance v0, Lcom/netflix/msl/msg/MslControl;

    new-instance v1, Lcom/netflix/msl/msg/MessageStreamFactory;

    invoke-direct {v1}, Lcom/netflix/msl/msg/MessageStreamFactory;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMessageRegistry;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMessageRegistry;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v4, v1, v2}, Lcom/netflix/msl/msg/MslControl;-><init>(ILcom/netflix/msl/msg/MessageStreamFactory;Lcom/netflix/msl/msg/ErrorMessageRegistry;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslControl:Lcom/netflix/msl/msg/MslControl;

    .line 155
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->esnProvider:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    .line 157
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "ESN %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->esnProvider:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 159
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getApiEndpointRegistry()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->urlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    .line 160
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

    .line 161
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslEncoderFactory:Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->messageDebugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    .line 162
    iput-object p2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->configuration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 163
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslEncoderFactory:Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;

    invoke-direct {v0, p1, p3, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->esnProvider:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->createMslContext(Ljava/lang/String;Lcom/netflix/msl/entityauth/RsaStore;Lcom/netflix/msl/util/MslStore;)Lcom/netflix/msl/client/ClientMslContext;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslCtx:Lcom/netflix/msl/client/ClientMslContext;

    .line 169
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "Do we need to clear MSL store (if ESN migration is needed): %b"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->configuration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isEsnMigrationRequired()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslCtx:Lcom/netflix/msl/client/ClientMslContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->configuration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isEsnMigrationRequired()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->init(Lcom/netflix/msl/util/MslContext;Z)V

    .line 171
    return-void
.end method

.method private appbootRequest(Ljava/net/URL;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/android/org/json/JSONObject;
    .locals 6

    .prologue
    .line 510
    const/4 v1, 0x0

    .line 512
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 513
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->createAppbootRequest(Ljava/net/URL;[B)Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;

    move-result-object v1

    .line 514
    iget-object v0, v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->future:Ljava/util/concurrent/Future;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->processRequest(Ljava/util/concurrent/Future;)[B

    move-result-object v0

    .line 515
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 517
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v3, "AppBoot response body: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 519
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, v2}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->extractMslTrustStore(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/client/ModifiableRsaStore;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->releaseResources(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;)V

    .line 521
    return-object v0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    :try_start_1
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to parse our own url for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->releaseResources(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;)V

    throw v0
.end method

.method private createApiRequest([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Ljava/lang/Boolean;Ljava/lang/Object;)Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;
    .locals 6

    .prologue
    .line 208
    invoke-virtual {p0, p5}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getApiUrl(Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v0

    .line 209
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->createMessageContext([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Ljava/lang/Boolean;)Lcom/netflix/msl/msg/MessageContext;

    move-result-object v1

    .line 210
    new-instance v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;-><init>(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;)V

    .line 211
    new-instance v3, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->configuration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-direct {v3, v4, v0}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/net/URL;)V

    iput-object v3, v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslControl:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslCtx:Lcom/netflix/msl/client/ClientMslContext;

    iget-object v4, v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    const/16 v5, 0x2710

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/netflix/msl/msg/MslControl;->request(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;I)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->future:Ljava/util/concurrent/Future;

    .line 214
    return-object v2
.end method

.method private createAppbootRequest(Ljava/net/URL;[B)Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;
    .locals 6

    .prologue
    .line 183
    invoke-static {}, Lcom/netflix/msl/client/ClientRequestMessageContext;->builder()Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 184
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->encrypted(Ljava/lang/Boolean;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p0}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->keyRequestDataProvider(Lcom/netflix/msl/client/KeyRequestDataProvider;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p2}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->payload([B)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->messageDebugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    .line 187
    invoke-virtual {v0, v1}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->debugContext(Lcom/netflix/msl/msg/MessageDebugContext;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->build()Lcom/netflix/msl/client/ClientRequestMessageContext;

    move-result-object v0

    .line 190
    new-instance v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;-><init>(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;)V

    .line 191
    new-instance v2, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->configuration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-direct {v2, v3, p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/net/URL;)V

    iput-object v2, v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    .line 192
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslControl:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslCtx:Lcom/netflix/msl/client/ClientMslContext;

    iget-object v4, v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    const/16 v5, 0x2710

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/netflix/msl/msg/MslControl;->request(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;I)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->future:Ljava/util/concurrent/Future;

    .line 194
    return-object v1
.end method

.method private createLoggingRequest([BLjava/util/Map;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Ljava/lang/Boolean;)Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/userauth/UserAuthenticationData;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;"
        }
    .end annotation

    .prologue
    .line 853
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getLoggingUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 855
    invoke-static {}, Lcom/netflix/msl/client/ClientRequestMessageContext;->builder()Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 856
    invoke-virtual {v1, p4}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->userAuthData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 857
    invoke-virtual {v1, p0}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->keyRequestDataProvider(Lcom/netflix/msl/client/KeyRequestDataProvider;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 858
    invoke-virtual {v1, p1}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->payload([B)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 859
    invoke-virtual {v1, p3}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->userId(Ljava/lang/String;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 860
    invoke-virtual {v1, p5}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->nonReplayable(Ljava/lang/Boolean;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->messageDebugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    .line 861
    invoke-virtual {v1, v2}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->debugContext(Lcom/netflix/msl/msg/MessageDebugContext;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 862
    invoke-virtual {v1}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->build()Lcom/netflix/msl/client/ClientRequestMessageContext;

    move-result-object v1

    .line 864
    new-instance v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;-><init>(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;)V

    .line 865
    new-instance v3, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->configuration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-direct {v3, v4, v0, p2}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/net/URL;Ljava/util/Map;)V

    iput-object v3, v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    .line 866
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslControl:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslCtx:Lcom/netflix/msl/client/ClientMslContext;

    iget-object v4, v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    const/16 v5, 0x2710

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/netflix/msl/msg/MslControl;->request(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;I)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->future:Ljava/util/concurrent/Future;

    .line 868
    return-object v2
.end method

.method private createMessageContext([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Ljava/lang/Boolean;)Lcom/netflix/msl/msg/MessageContext;
    .locals 2

    .prologue
    .line 231
    instance-of v0, p3, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;

    if-eqz v0, :cond_0

    .line 233
    invoke-static {}, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;->builder()Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;

    move-result-object v0

    .line 234
    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->userAuthData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;

    move-result-object v0

    .line 235
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->keyRequestDataProvider(Lcom/netflix/msl/client/KeyRequestDataProvider;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->payload([B)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->userId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;

    move-result-object v0

    .line 238
    invoke-virtual {v0, p4}, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->nonReplayable(Ljava/lang/Boolean;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->messageDebugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    .line 239
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->debugContext(Lcom/netflix/msl/msg/MessageDebugContext;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 240
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->requestingTokens(Ljava/lang/Boolean;)Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext$AndroidRequestMessageContextBuilder;->build()Lcom/netflix/mediaclient/service/msl/client/AndroidRequestMessageContext;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 245
    :cond_0
    invoke-static {}, Lcom/netflix/msl/client/ClientRequestMessageContext;->builder()Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p3}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->userAuthData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    .line 247
    invoke-virtual {v0, p0}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->keyRequestDataProvider(Lcom/netflix/msl/client/KeyRequestDataProvider;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p1}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->payload([B)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p2}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->userId(Ljava/lang/String;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    .line 250
    invoke-virtual {v0, p4}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->nonReplayable(Ljava/lang/Boolean;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->messageDebugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    .line 251
    invoke-virtual {v0, v1}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->debugContext(Lcom/netflix/msl/msg/MessageDebugContext;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->build()Lcom/netflix/msl/client/ClientRequestMessageContext;

    move-result-object v0

    goto :goto_0
.end method

.method private createMslContext(Ljava/lang/String;Lcom/netflix/msl/entityauth/RsaStore;Lcom/netflix/msl/util/MslStore;)Lcom/netflix/msl/client/ClientMslContext;
    .locals 4

    .prologue
    .line 267
    new-instance v0, Lcom/netflix/msl/util/NullAuthenticationUtils;

    invoke-direct {v0}, Lcom/netflix/msl/util/NullAuthenticationUtils;-><init>()V

    .line 270
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 271
    sget-object v2, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->RSA:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    new-instance v3, Lcom/netflix/msl/entityauth/RsaAuthenticationFactory;

    invoke-direct {v3, p2, v0}, Lcom/netflix/msl/entityauth/RsaAuthenticationFactory;-><init>(Lcom/netflix/msl/entityauth/RsaStore;Lcom/netflix/msl/util/AuthenticationUtils;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v2, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->NONE:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    new-instance v3, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationFactory;

    invoke-direct {v3, v0}, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationFactory;-><init>(Lcom/netflix/msl/util/AuthenticationUtils;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    sget-object v2, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    new-instance v3, Lcom/netflix/mediaclient/service/msl/client/WidevineKeyExchange;

    invoke-direct {v3}, Lcom/netflix/mediaclient/service/msl/client/WidevineKeyExchange;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-static {}, Lcom/netflix/msl/client/ClientMslContext;->builder()Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;

    move-result-object v2

    new-instance v3, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationData;

    invoke-direct {v3, p1}, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationData;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v2, v3}, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;

    move-result-object v2

    .line 280
    invoke-virtual {v2, p3}, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslStore(Lcom/netflix/msl/util/MslStore;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;

    move-result-object v2

    .line 281
    invoke-virtual {v2, v1}, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories(Ljava/util/Map;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;

    move-result-object v1

    .line 282
    invoke-virtual {v1, v0}, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories(Ljava/util/Map;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslEncoderFactory:Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;

    .line 283
    invoke-virtual {v0, v1}, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslEncoderFactory(Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->build()Lcom/netflix/msl/client/ClientMslContext;

    move-result-object v0

    .line 278
    return-object v0
.end method

.method private createPresentationTrackingRequest([BLjava/util/Map;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Ljava/lang/Boolean;)Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/userauth/UserAuthenticationData;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;"
        }
    .end annotation

    .prologue
    .line 793
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getPresentationTrackingUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 795
    invoke-static {}, Lcom/netflix/msl/client/ClientRequestMessageContext;->builder()Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 796
    invoke-virtual {v1, p4}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->userAuthData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 797
    invoke-virtual {v1, p0}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->keyRequestDataProvider(Lcom/netflix/msl/client/KeyRequestDataProvider;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 798
    invoke-virtual {v1, p1}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->payload([B)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 799
    invoke-virtual {v1, p3}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->userId(Ljava/lang/String;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 800
    invoke-virtual {v1, p5}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->nonReplayable(Ljava/lang/Boolean;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->messageDebugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    .line 801
    invoke-virtual {v1, v2}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->debugContext(Lcom/netflix/msl/msg/MessageDebugContext;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 802
    invoke-virtual {v1}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->build()Lcom/netflix/msl/client/ClientRequestMessageContext;

    move-result-object v1

    .line 804
    new-instance v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;-><init>(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;)V

    .line 805
    new-instance v3, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->configuration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-direct {v3, v4, v0, p2}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/net/URL;Ljava/util/Map;)V

    iput-object v3, v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    .line 806
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslControl:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslCtx:Lcom/netflix/msl/client/ClientMslContext;

    iget-object v4, v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    const/16 v5, 0x2710

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/netflix/msl/msg/MslControl;->request(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;I)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->future:Ljava/util/concurrent/Future;

    .line 808
    return-object v2
.end method

.method private extractMslTrustStore(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/client/ModifiableRsaStore;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 540
    if-nez p2, :cond_1

    .line 541
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "extractMslTrustStore:: rsaStore is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "Error in appboot response, pass whole response to be handled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    :cond_2
    const-string/jumbo v0, "msltruststore"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 551
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/NetflixMslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Unable to find msltruststore in appboot response (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_3
    const-string/jumbo v0, "msltruststore"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 555
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 556
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/NetflixMslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Unable to get msltruststore from appboot response because of error (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "error"

    invoke-virtual {p1, v4}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_4
    const-string/jumbo v1, "keys"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 560
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/NetflixMslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Unable to find msltruststore keys in appboot response (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_5
    const-string/jumbo v1, "keys"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    .line 564
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 566
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 568
    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 569
    invoke-interface {p2, v0, v3}, Lcom/netflix/msl/client/ModifiableRsaStore;->addPublicKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private releaseResources(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;)V
    .locals 2

    .prologue
    .line 687
    if-nez p1, :cond_0

    .line 688
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MSL channel and URL not known! This should NOT happen!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_0
    iget-object v0, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    if-nez v0, :cond_1

    .line 692
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MSL URL not known! This should NOT happen!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_1
    iget-object v0, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->release()V

    .line 696
    return-void
.end method

.method private toAppbootUri(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .prologue
    .line 477
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string/jumbo v1, "/appboot/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->esnProvider:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getESNPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    return-object v1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unable to create URL"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public apiRequest([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Ljava/lang/Boolean;Ljava/lang/Object;)[B
    .locals 2

    .prologue
    .line 586
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->createApiRequest([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Ljava/lang/Boolean;Ljava/lang/Object;)Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;

    move-result-object v1

    .line 590
    :try_start_0
    iget-object v0, v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->future:Ljava/util/concurrent/Future;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->processRequest(Ljava/util/concurrent/Future;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 593
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->releaseResources(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;)V

    .line 596
    return-object v0

    .line 593
    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->releaseResources(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;)V

    throw v0
.end method

.method public appbootRequest(Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/android/org/json/JSONObject;
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->urlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->esnProvider:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getESNPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getAppbootUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 456
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->appbootRequest(Ljava/net/URL;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public appbootRequest(Ljava/lang/String;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/android/org/json/JSONObject;
    .locals 1

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->toAppbootUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->appbootRequest(Ljava/net/URL;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public defaultAppbootRequest(Ljava/lang/Long;Ljava/lang/Long;)Lcom/netflix/android/org/json/JSONObject;
    .locals 6

    .prologue
    .line 298
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 299
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 300
    if-eqz p1, :cond_0

    .line 301
    const-string/jumbo v2, "hash"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 304
    :cond_0
    const-string/jumbo v2, "msltruststore"

    invoke-virtual {v0, v2, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 306
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 307
    if-eqz p1, :cond_1

    .line 308
    const-string/jumbo v2, "hash"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 311
    :cond_1
    const-string/jumbo v2, "ssltruststore"

    invoke-virtual {v0, v2, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 314
    const-string/jumbo v1, "retrystrategy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;I)Lcom/netflix/android/org/json/JSONObject;

    .line 316
    return-object v0
.end method

.method public bridge synthetic get()Lcom/netflix/msl/keyx/KeyRequestData;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->get()Lcom/netflix/msl/keyx/WidevineKeyRequestData;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/netflix/msl/keyx/WidevineKeyRequestData;
    .locals 2

    .prologue
    .line 777
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "WidevineKeyRequestDataProvider::get:"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;->getKeyRequestData()Lcom/netflix/msl/keyx/WidevineKeyRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getApiUrl(Ljava/lang/Object;)Ljava/net/URL;
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->urlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    const-string/jumbo v1, "/msl"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getApiUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 624
    return-object v0
.end method

.method public getAuthorizationCredentials(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getAuthorizationCredentials(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getConfigUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->urlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    const-string/jumbo v1, "/msl"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getConfigUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLoggingUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->urlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    const-string/jumbo v1, "/ichnaea/log"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getClientLoggingUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslEncoderFactory:Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;

    return-object v0
.end method

.method public getMslEncoderFormat()Lcom/netflix/msl/io/MslEncoderFormat;
    .locals 1

    .prologue
    .line 986
    sget-object v0, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    return-object v0
.end method

.method public getMslTokensAndCrypto(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 938
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "getMslTokensAndCrypto (from MDX) with userid %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 940
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 942
    if-nez v1, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-object v0

    .line 945
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v2

    .line 946
    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v3

    .line 947
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 948
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Lcom/netflix/msl/crypto/ICryptoContext;)V

    goto :goto_0
.end method

.method public getMslUserState()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getMslUserState()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    move-result-object v0

    return-object v0
.end method

.method public getPresentationTrackingUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->urlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    const-string/jumbo v1, "/presentationtracking/users/presentationtracking"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getClientLoggingUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlProvider()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->urlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    return-object v0
.end method

.method public getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    return-object v0
.end method

.method public isUserLoggedIn()Z
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->isUserLoggedIn()Z

    move-result v0

    return v0
.end method

.method public logRequest([BLjava/util/Map;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/userauth/UserAuthenticationData;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 896
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->createLoggingRequest([BLjava/util/Map;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Ljava/lang/Boolean;)Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;

    move-result-object v1

    .line 900
    :try_start_0
    iget-object v0, v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->future:Ljava/util/concurrent/Future;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->processRequest(Ljava/util/concurrent/Future;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 903
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->releaseResources(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;)V

    .line 906
    return-object v0

    .line 903
    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->releaseResources(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;)V

    throw v0
.end method

.method public presentationTrackingRequest([BLjava/util/Map;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/userauth/UserAuthenticationData;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 825
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->createPresentationTrackingRequest([BLjava/util/Map;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Ljava/lang/Boolean;)Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;

    move-result-object v1

    .line 829
    :try_start_0
    iget-object v0, v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->future:Ljava/util/concurrent/Future;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->processRequest(Ljava/util/concurrent/Future;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 832
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->releaseResources(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;)V

    .line 835
    return-object v0

    .line 832
    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->releaseResources(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;)V

    throw v0
.end method

.method public processRequest(Ljava/util/concurrent/Future;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/netflix/msl/msg/MslControl$MslChannel;",
            ">;)[B"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 644
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    .line 645
    if-nez v0, :cond_0

    .line 646
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No MslChannel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 651
    :catch_0
    move-exception v0

    .line 652
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "Execution exception: "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 653
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 654
    instance-of v1, v0, Lcom/netflix/msl/MslException;

    if-eqz v1, :cond_1

    .line 655
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "MSL exception found "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    check-cast v0, Lcom/netflix/msl/MslException;

    throw v0

    .line 649
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/netflix/msl/msg/MslControl$MslChannel;->input:Lcom/netflix/msl/msg/MessageInputStream;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 671
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "processRequest:: check input stream for error... "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    .line 674
    if-eqz v1, :cond_3

    .line 678
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;-><init>(Lcom/netflix/msl/msg/ErrorHeader;)V

    throw v0

    .line 659
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 660
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "Runtime exception found "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 664
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 666
    :catch_1
    move-exception v0

    .line 667
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "Interrupted exception found "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 668
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 680
    :cond_3
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "processRequest:: response received... "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/netflix/msl/util/IoUtil;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized removeUserData()V
    .locals 1

    .prologue
    .line 752
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->clearUserIdTokens()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    monitor-exit p0

    return-void

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetRenewUserAuthenticationData()Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;
    .locals 2

    .prologue
    .line 915
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getRenewUserAuthenticationData()Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    move-result-object v0

    .line 916
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->clearRenewUserAuthenticationData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    monitor-exit p0

    return-object v0

    .line 915
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldExecuteAppBotSynchronously()Z
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public testUserRecovery()V
    .locals 0

    .prologue
    .line 979
    return-void
.end method

.method public unwrapApiResponse([B)Lcom/netflix/msl/client/ApiHttpWrapper;
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 395
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 397
    const-string/jumbo v1, "nf_msl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unwrapApiResponse::raw JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->dumpVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 401
    const-string/jumbo v2, "edgemsl-version"

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 402
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    .line 403
    const-string/jumbo v0, "headers"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/msl/client/io/JsonUtil;->getMap(Lcom/netflix/android/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 404
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 405
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 407
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 409
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 412
    :cond_0
    const-string/jumbo v0, "status"

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 414
    const-string/jumbo v0, "payload"

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    .line 416
    const/4 v0, 0x0

    .line 417
    const-string/jumbo v5, "data"

    invoke-virtual {v1, v5}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 418
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v5, "unwrapApiResponse::Base64 received"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 440
    :goto_1
    new-instance v1, Lcom/netflix/msl/client/ApiHttpWrapper;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/netflix/msl/client/ApiHttpWrapper;-><init>(Ljava/lang/String;Ljava/util/Map;I[B)V

    return-object v1

    .line 421
    :cond_1
    const-string/jumbo v5, "json"

    invoke-virtual {v1, v5}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 422
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v5, "unwrapApiResponse::Json received"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string/jumbo v0, "json"

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 424
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 425
    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 426
    :cond_2
    instance-of v1, v0, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v1, :cond_3

    .line 427
    check-cast v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0, v6}, Lcom/netflix/android/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 428
    :cond_3
    instance-of v1, v0, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v1, :cond_4

    .line 429
    check-cast v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-virtual {v0, v6}, Lcom/netflix/android/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 431
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Only String/JSONObject/JSONArray are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_5
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v5, "No payload contents in data or json"

    invoke-static {v1, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateAuthorizationCredentials(Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->updateAuthorizationCredentials(Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    .line 997
    return-void
.end method

.method public updateUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->updateUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method public wrapApiRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 354
    new-instance v3, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v3}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 356
    const-string/jumbo v0, "path"

    invoke-virtual {v3, v0, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 357
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 358
    if-eqz p3, :cond_0

    .line 359
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 361
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 363
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    .line 367
    :cond_0
    const-string/jumbo v0, "query"

    if-eqz p4, :cond_3

    :goto_1
    invoke-virtual {v3, v0, p4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 368
    const-string/jumbo v0, "headers"

    invoke-virtual {v3, v0, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 369
    invoke-static {p5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 372
    const-string/jumbo v1, "payload"

    invoke-virtual {v3, v1, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 373
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 375
    :cond_1
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    const-string/jumbo v0, "method"

    invoke-virtual {v3, v0, p2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 379
    :cond_2
    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 380
    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 381
    invoke-virtual {v0, v3}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 383
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 367
    :cond_3
    new-instance p4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {p4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    goto :goto_1
.end method
