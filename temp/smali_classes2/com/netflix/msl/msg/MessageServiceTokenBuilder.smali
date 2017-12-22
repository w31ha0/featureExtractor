.class public Lcom/netflix/msl/msg/MessageServiceTokenBuilder;
.super Ljava/lang/Object;
.source "MessageServiceTokenBuilder.java"


# instance fields
.field private final builder:Lcom/netflix/msl/msg/MessageBuilder;

.field private final cryptoContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;"
        }
    .end annotation
.end field

.field private final ctx:Lcom/netflix/msl/util/MslContext;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 96
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getCryptoContexts()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->cryptoContexts:Ljava/util/Map;

    .line 97
    iput-object p3, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    .line 98
    return-void
.end method

.method private getPrimaryMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getKeyExchangeData()Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v0, v0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    goto :goto_0
.end method

.method private static selectCryptoContext(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;)",
            "Lcom/netflix/msl/crypto/ICryptoContext;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/ICryptoContext;

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/ICryptoContext;

    goto :goto_0
.end method


# virtual methods
.method public addMasterBoundPeerServiceToken(Ljava/lang/String;[BZLcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 332
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v4

    .line 333
    if-nez v4, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->cryptoContexts:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->selectCryptoContext(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v8

    .line 338
    if-eqz v8, :cond_0

    .line 342
    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addPeerServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    const/4 v0, 0x1

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Service token bound to incorrect authentication tokens despite setting correct master token."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addMasterBoundPrimaryServiceToken(Ljava/lang/String;[BZLcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-direct {p0}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->getPrimaryMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v4

    .line 294
    if-nez v4, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->cryptoContexts:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->selectCryptoContext(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v8

    .line 299
    if-eqz v8, :cond_0

    .line 303
    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    const/4 v0, 0x1

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Service token bound to incorrect authentication tokens despite setting correct master token."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addPeerServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Z
    .locals 1

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0, p1}, Lcom/netflix/msl/msg/MessageBuilder;->addPeerServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPrimaryServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Z
    .locals 1

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0, p1}, Lcom/netflix/msl/msg/MessageBuilder;->addServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addUnboundPeerServiceToken(Ljava/lang/String;[BZLcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 259
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->cryptoContexts:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->selectCryptoContext(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v8

    .line 260
    if-nez v8, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 270
    :goto_0
    return v0

    .line 264
    :cond_0
    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addPeerServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    const/4 v0, 0x1

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Service token bound to incorrect authentication tokens despite being unbound."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addUnboundPrimaryServiceToken(Ljava/lang/String;[BZLcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 226
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->cryptoContexts:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->selectCryptoContext(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v8

    .line 227
    if-nez v8, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    .line 231
    :cond_0
    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    const/4 v0, 0x1

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Service token bound to incorrect authentication tokens despite being unbound."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addUserBoundPeerServiceToken(Ljava/lang/String;[BZLcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 415
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v4

    .line 416
    if-nez v4, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v5

    .line 421
    if-eqz v5, :cond_0

    .line 425
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->cryptoContexts:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->selectCryptoContext(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v8

    .line 426
    if-eqz v8, :cond_0

    .line 430
    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addPeerServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    const/4 v0, 0x1

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Service token bound to incorrect authentication tokens despite setting correct master token and user ID token."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addUserBoundPrimaryServiceToken(Ljava/lang/String;[BZLcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 371
    invoke-direct {p0}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->getPrimaryMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v4

    .line 372
    if-nez v4, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageBuilder;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v5

    .line 377
    if-eqz v5, :cond_0

    .line 381
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->cryptoContexts:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->selectCryptoContext(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v8

    .line 382
    if-eqz v8, :cond_0

    .line 386
    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslMessageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    const/4 v0, 0x1

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Service token bound to incorrect authentication tokens despite setting correct master token and user ID token."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deletePeerServiceToken(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerServiceTokens()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 520
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0, p1}, Lcom/netflix/msl/msg/MessageBuilder;->deletePeerServiceToken(Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;

    .line 522
    const/4 v0, 0x1

    .line 527
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deletePrimaryServiceToken(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getServiceTokens()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 496
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0, p1}, Lcom/netflix/msl/msg/MessageBuilder;->deleteServiceToken(Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;

    .line 498
    const/4 v0, 0x1

    .line 503
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public excludePeerServiceToken(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerServiceTokens()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 473
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0, p1}, Lcom/netflix/msl/msg/MessageBuilder;->excludePeerServiceToken(Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;

    .line 475
    const/4 v0, 0x1

    .line 480
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public excludePrimaryServiceToken(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getServiceTokens()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 451
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0, p1}, Lcom/netflix/msl/msg/MessageBuilder;->excludeServiceToken(Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;

    .line 453
    const/4 v0, 0x1

    .line 458
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeerServiceTokens()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerServiceTokens()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryServiceTokens()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getServiceTokens()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isPeerMasterTokenAvailable()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPeerUserIdTokenAvailable()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimaryMasterTokenAvailable()Z
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->getPrimaryMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimaryUserIdTokenAvailable()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageBuilder;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
