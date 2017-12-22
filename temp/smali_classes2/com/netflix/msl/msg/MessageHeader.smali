.class public Lcom/netflix/msl/msg/MessageHeader;
.super Lcom/netflix/msl/msg/Header;
.source "MessageHeader.java"


# static fields
.field private static final KEY_CAPABILITIES:Ljava/lang/String; = "capabilities"

.field private static final KEY_HANDSHAKE:Ljava/lang/String; = "handshake"

.field private static final KEY_KEY_REQUEST_DATA:Ljava/lang/String; = "keyrequestdata"

.field private static final KEY_KEY_RESPONSE_DATA:Ljava/lang/String; = "keyresponsedata"

.field private static final KEY_MESSAGE_ID:Ljava/lang/String; = "messageid"

.field private static final KEY_NON_REPLAYABLE:Ljava/lang/String; = "nonreplayable"

.field private static final KEY_NON_REPLAYABLE_ID:Ljava/lang/String; = "nonreplayableid"

.field private static final KEY_PEER_MASTER_TOKEN:Ljava/lang/String; = "peermastertoken"

.field private static final KEY_PEER_SERVICE_TOKENS:Ljava/lang/String; = "peerservicetokens"

.field private static final KEY_PEER_USER_ID_TOKEN:Ljava/lang/String; = "peeruseridtoken"

.field private static final KEY_RECIPIENT:Ljava/lang/String; = "recipient"

.field private static final KEY_RENEWABLE:Ljava/lang/String; = "renewable"

.field private static final KEY_SENDER:Ljava/lang/String; = "sender"

.field private static final KEY_SERVICE_TOKENS:Ljava/lang/String; = "servicetokens"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final KEY_USER_AUTHENTICATION_DATA:Ljava/lang/String; = "userauthdata"

.field private static final KEY_USER_ID_TOKEN:Ljava/lang/String; = "useridtoken"

.field private static final MILLISECONDS_PER_SECOND:J = 0x3e8L


# instance fields
.field private final capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

.field private final encodings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/io/MslEncoderFormat;",
            "[B>;"
        }
    .end annotation
.end field

.field private final entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

.field private final handshake:Z

.field private final headerdata:Lcom/netflix/msl/io/MslObject;

.field private final keyRequestData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;"
        }
    .end annotation
.end field

.field private final keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

.field private final masterToken:Lcom/netflix/msl/tokens/MasterToken;

.field private final messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private final messageId:J

.field private final nonReplayableId:Ljava/lang/Long;

.field private final peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

.field private final peerServiceTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation
.end field

.field private final peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

.field private final recipient:Ljava/lang/String;

.field private final renewable:Z

.field private final sender:Ljava/lang/String;

.field private final serviceTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:Ljava/lang/Long;

.field private final user:Lcom/netflix/msl/tokens/MslUser;

.field private final userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

.field private final userIdToken:Lcom/netflix/msl/tokens/UserIdToken;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/msg/MessageHeader$HeaderData;Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 264
    invoke-direct {p0}, Lcom/netflix/msl/msg/Header;-><init>()V

    .line 1039
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->encodings:Ljava/util/Map;

    .line 266
    iget-wide v4, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->messageId:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    iget-wide v4, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->messageId:J

    const-wide/high16 v6, 0x20000000000000L

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 267
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->messageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 271
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Message entity authentication data or master token must be provided."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_2
    if-eqz p3, :cond_4

    move v2, v3

    .line 282
    :goto_0
    if-nez p3, :cond_5

    :goto_1
    iput-object p2, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 283
    iput-object p3, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 284
    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->nonReplayableId:Ljava/lang/Long;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    .line 285
    iget-boolean v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->renewable:Z

    iput-boolean v1, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    .line 286
    iget-boolean v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->handshake:Z

    iput-boolean v1, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    .line 287
    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    .line 288
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    .line 289
    if-eqz v2, :cond_7

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->recipient:Ljava/lang/String;

    :goto_3
    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    .line 291
    iget-wide v4, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->messageId:J

    iput-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    .line 292
    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->keyRequestData:Ljava/util/Set;

    if-eqz v1, :cond_8

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->keyRequestData:Ljava/util/Set;

    :goto_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    .line 293
    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    .line 294
    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 295
    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 296
    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->serviceTokens:Ljava/util/Set;

    if-eqz v1, :cond_9

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->serviceTokens:Ljava/util/Set;

    :goto_5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    .line 297
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 298
    iget-object v1, p5, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 299
    iget-object v1, p5, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 300
    iget-object v1, p5, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerServiceTokens:Ljava/util/Set;

    if-eqz v1, :cond_a

    iget-object v1, p5, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerServiceTokens:Ljava/util/Set;

    :goto_6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    .line 309
    :goto_7
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v1, :cond_d

    .line 313
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_c

    .line 314
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 315
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 326
    :goto_8
    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v4, :cond_e

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v4, v2}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 327
    :cond_3
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "User ID token must be bound to a master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_4
    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->encrypts()Z

    move-result v1

    move v2, v1

    goto/16 :goto_0

    :cond_5
    move-object p2, v0

    .line 282
    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    .line 288
    goto/16 :goto_2

    :cond_7
    move-object v1, v0

    .line 289
    goto/16 :goto_3

    .line 292
    :cond_8
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_4

    .line 296
    :cond_9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_5

    .line 300
    :cond_a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_6

    .line 302
    :cond_b
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 303
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 304
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    goto :goto_7

    .line 317
    :cond_c
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 318
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    goto :goto_8

    .line 321
    :cond_d
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 322
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    goto :goto_8

    .line 328
    :cond_e
    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v4, :cond_10

    if-eqz v1, :cond_f

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v4, v1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 329
    :cond_f
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Peer user ID token must be bound to a peer master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_10
    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v4, :cond_13

    .line 333
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    .line 339
    :goto_9
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 340
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v5

    if-eqz v5, :cond_14

    if-eqz v2, :cond_12

    invoke-virtual {v0, v2}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 341
    :cond_12
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Master token bound service tokens must be bound to the provided master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_13
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    goto :goto_9

    .line 342
    :cond_14
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v5}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/UserIdToken;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 343
    :cond_15
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "User ID token bound service tokens must be bound to the provided user ID token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_16
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 346
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz v1, :cond_18

    invoke-virtual {v0, v1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 347
    :cond_18
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Master token bound peer service tokens must be bound to the provided peer master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_19
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v4}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/UserIdToken;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 349
    :cond_1a
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "User ID token bound peer service tokens must be bound to the provided peer user ID token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_1b
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    .line 356
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "sender"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 357
    :cond_1c
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "recipient"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 358
    :cond_1d
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "timestamp"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 359
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "messageid"

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 360
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "nonreplayable"

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-eqz v0, :cond_29

    move v0, v3

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 361
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "nonreplayableid"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 362
    :cond_1e
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "renewable"

    iget-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 363
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "handshake"

    iget-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 364
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "capabilities"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 365
    :cond_1f
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "keyrequestdata"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    invoke-static {p1, v2}, Lcom/netflix/msl/io/MslEncoderUtils;->createArray(Lcom/netflix/msl/util/MslContext;Ljava/util/Collection;)Lcom/netflix/msl/io/MslArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 366
    :cond_20
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "keyresponsedata"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 367
    :cond_21
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "userauthdata"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 368
    :cond_22
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "useridtoken"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 369
    :cond_23
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "servicetokens"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    invoke-static {p1, v2}, Lcom/netflix/msl/io/MslEncoderUtils;->createArray(Lcom/netflix/msl/util/MslContext;Ljava/util/Collection;)Lcom/netflix/msl/io/MslArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 370
    :cond_24
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "peermastertoken"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 371
    :cond_25
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "peeruseridtoken"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 372
    :cond_26
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "peerservicetokens"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    invoke-static {p1, v2}, Lcom/netflix/msl/io/MslEncoderUtils;->createArray(Lcom/netflix/msl/util/MslContext;Ljava/util/Collection;)Lcom/netflix/msl/io/MslArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_27
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_2c

    .line 385
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {v0, v1}, Lcom/netflix/msl/util/MslStore;->getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 390
    if-nez v0, :cond_2b

    .line 391
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->isDecrypted()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 392
    :cond_28
    new-instance v0, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslMasterTokenException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslMasterTokenException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslMasterTokenException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslMasterTokenException;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslMasterTokenException;->setMessageId(J)Lcom/netflix/msl/MslMasterTokenException;

    move-result-object v0

    throw v0

    .line 360
    :cond_29
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 373
    :catch_0
    move-exception v0

    .line 374
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "headerdata"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 375
    invoke-virtual {v1, v0}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 376
    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 377
    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 378
    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEncodingException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    .line 379
    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslEncodingException;->setMessageId(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 393
    :cond_2a
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-direct {v0, p1, v1}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 418
    :goto_b
    return-void

    .line 395
    :cond_2b
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    goto :goto_b

    .line 399
    :cond_2c
    :try_start_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    .line 400
    invoke-virtual {p1, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v1

    .line 401
    if-nez v1, :cond_2d

    .line 402
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_1 .. :try_end_1} :catch_2

    .line 404
    :catch_1
    move-exception v0

    .line 405
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    .line 406
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 407
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 408
    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslCryptoException;->setMessageId(J)Lcom/netflix/msl/MslException;

    .line 409
    throw v0

    .line 403
    :cond_2d
    :try_start_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    .line 410
    :catch_2
    move-exception v0

    .line 411
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    .line 412
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEntityAuthException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 413
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEntityAuthException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 414
    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslEntityAuthException;->setMessageId(J)Lcom/netflix/msl/MslException;

    .line 415
    throw v0
.end method

.method protected constructor <init>(Lcom/netflix/msl/util/MslContext;[BLcom/netflix/msl/entityauth/EntityAuthenticationData;Lcom/netflix/msl/tokens/MasterToken;[BLjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "[B",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationData;",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/netflix/msl/msg/Header;-><init>()V

    .line 1039
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->encodings:Ljava/util/Map;

    .line 465
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v7

    .line 469
    if-nez p4, :cond_0

    move-object v0, p3

    :goto_0
    :try_start_0
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 470
    iput-object p4, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 471
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 472
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_ENTITY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_0 .. :try_end_0} :catch_1

    .line 516
    :catch_0
    move-exception v0

    .line 517
    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    .line 518
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    .line 519
    throw v0

    .line 469
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 475
    :cond_1
    if-eqz p4, :cond_5

    .line 477
    :try_start_1
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/netflix/msl/util/MslStore;->getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 482
    if-nez v0, :cond_4

    .line 483
    invoke-virtual {p4}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lcom/netflix/msl/tokens/MasterToken;->isDecrypted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 484
    :cond_2
    new-instance v0, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1, p4}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v0
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_1 .. :try_end_1} :catch_1

    .line 520
    :catch_1
    move-exception v0

    .line 521
    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslEntityAuthException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEntityAuthException;

    .line 522
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    .line 523
    throw v0

    .line 485
    :cond_3
    :try_start_2
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v0, p1, p4}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 509
    :goto_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-interface {v0, p2, p5, v7}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[BLcom/netflix/msl/io/MslEncoderFactory;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 510
    if-eqz p4, :cond_7

    .line 511
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_MASTERTOKENBASED_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0

    .line 487
    :cond_4
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 491
    :cond_5
    :try_start_3
    invoke-virtual {p3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    .line 492
    invoke-virtual {p1, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v1

    .line 493
    if-nez v1, :cond_6

    .line 494
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_3 .. :try_end_3} :catch_3

    .line 496
    :catch_2
    move-exception v0

    .line 497
    :try_start_4
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    .line 498
    throw v0
    :try_end_4
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_4 .. :try_end_4} :catch_1

    .line 495
    :cond_6
    :try_start_5
    invoke-virtual {v1, p1, p3}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_5
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 499
    :catch_3
    move-exception v0

    .line 500
    :try_start_6
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    .line 501
    throw v0

    .line 513
    :cond_7
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_ENTITYDATABASED_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0

    .line 515
    :cond_8
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-interface {v0, p2, v7}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([BLcom/netflix/msl/io/MslEncoderFactory;)[B
    :try_end_6
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v1

    .line 527
    :try_start_7
    invoke-virtual {v7, v1}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    .line 531
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "messageid"

    invoke-virtual {v0, v2}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    .line 532
    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_9

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    const-wide/high16 v4, 0x20000000000000L

    cmp-long v0, v2, v4

    if-lez v0, :cond_a

    .line 533
    :cond_9
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->MESSAGE_ID_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "headerdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    throw v0
    :try_end_7
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_7 .. :try_end_7} :catch_4

    .line 534
    :catch_4
    move-exception v0

    .line 535
    new-instance v2, Lcom/netflix/msl/MslEncodingException;

    sget-object v3, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "headerdata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, p4}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 540
    :cond_a
    :try_start_8
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "sender"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    .line 541
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "recipient"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "recipient"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    .line 546
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "keyresponsedata"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 547
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "keyresponsedata"

    invoke-virtual {v0, v1, v7}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/msl/keyx/KeyResponseData;->create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    .line 553
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    .line 554
    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    :goto_5
    move-object v3, v0

    .line 562
    :goto_6
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "useridtoken"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "useridtoken"

    .line 563
    invoke-virtual {v1, v2, v7}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    invoke-direct {v0, p1, v1, v3}, Lcom/netflix/msl/tokens/UserIdToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MasterToken;)V

    :goto_7
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 566
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "userauthdata"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "userauthdata"

    .line 567
    invoke-virtual {v0, v1, v7}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 571
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v0, :cond_14

    .line 572
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->getScheme()Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    move-result-object v0

    .line 573
    invoke-virtual {p1, v0}, Lcom/netflix/msl/util/MslContext;->getUserAuthenticationFactory(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Lcom/netflix/msl/userauth/UserAuthenticationFactory;

    move-result-object v1

    .line 574
    if-nez v1, :cond_12

    .line 575
    new-instance v1, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->USERAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/MslUserAuthException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0
    :try_end_8
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/netflix/msl/MslException; {:try_start_8 .. :try_end_8} :catch_6

    .line 599
    :catch_5
    move-exception v0

    .line 600
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "headerdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p4}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslEncodingException;->setMessageId(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 540
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 541
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 542
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_e
    move-object v0, p4

    .line 554
    goto/16 :goto_5

    .line 557
    :cond_f
    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    move-object v3, p4

    .line 558
    goto/16 :goto_6

    .line 563
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 567
    :cond_11
    const/4 v0, 0x0

    goto :goto_8

    .line 576
    :cond_12
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v0

    .line 577
    :goto_9
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1, p1, v0, v2, v4}, Lcom/netflix/msl/userauth/UserAuthenticationFactory;->authenticate(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    .line 586
    :goto_a
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 587
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "servicetokens"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 588
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "servicetokens"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getMslArray(Ljava/lang/String;)Lcom/netflix/msl/io/MslArray;

    move-result-object v9

    .line 589
    const/4 v0, 0x0

    move v6, v0

    :goto_b
    invoke-virtual {v9}, Lcom/netflix/msl/io/MslArray;->size()I
    :try_end_9
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/netflix/msl/MslException; {:try_start_9 .. :try_end_9} :catch_6

    move-result v0

    if-ge v6, v0, :cond_16

    .line 591
    :try_start_a
    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v9, v6, v7}, Lcom/netflix/msl/io/MslArray;->getMslObject(ILcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    move-object v1, p1

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Map;)V

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lcom/netflix/msl/MslException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_a .. :try_end_a} :catch_5

    .line 589
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_b

    .line 576
    :cond_13
    :try_start_b
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 578
    :cond_14
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v0, :cond_15

    .line 579
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;
    :try_end_b
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lcom/netflix/msl/MslException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_a

    .line 601
    :catch_6
    move-exception v0

    .line 602
    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    .line 603
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 604
    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslException;->setMessageId(J)Lcom/netflix/msl/MslException;

    .line 605
    throw v0

    .line 581
    :cond_15
    const/4 v0, 0x0

    :try_start_c
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    goto :goto_a

    .line 592
    :catch_7
    move-exception v0

    .line 593
    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 594
    throw v0

    .line 598
    :cond_16
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;
    :try_end_c
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lcom/netflix/msl/MslException; {:try_start_c .. :try_end_c} :catch_6

    .line 609
    :try_start_d
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "nonreplayableid"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "nonreplayableid"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    .line 610
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "renewable"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    .line 612
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "handshake"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "handshake"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_d
    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    .line 615
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, 0x20000000000000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    .line 616
    :cond_17
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->NONREPLAYABLE_ID_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "headerdata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_d .. :try_end_d} :catch_8
    .catch Lcom/netflix/msl/MslException; {:try_start_d .. :try_end_d} :catch_9

    .line 681
    :catch_8
    move-exception v0

    .line 682
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "headerdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {v4}, Lcom/netflix/msl/io/MslObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 683
    invoke-virtual {v1, p4}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    .line 684
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 685
    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 686
    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEncodingException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    .line 687
    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslEncodingException;->setMessageId(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 609
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 612
    :cond_19
    const/4 v0, 0x0

    goto :goto_d

    .line 619
    :cond_1a
    :try_start_e
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "capabilities"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 620
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "capabilities"

    invoke-virtual {v0, v1, v7}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 621
    new-instance v1, Lcom/netflix/msl/msg/MessageCapabilities;

    invoke-direct {v1, v0}, Lcom/netflix/msl/msg/MessageCapabilities;-><init>(Lcom/netflix/msl/io/MslObject;)V

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    .line 627
    :goto_e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 628
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "keyrequestdata"

    invoke-virtual {v0, v2}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 629
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "keyrequestdata"

    invoke-virtual {v0, v2}, Lcom/netflix/msl/io/MslObject;->getMslArray(Ljava/lang/String;)Lcom/netflix/msl/io/MslArray;

    move-result-object v2

    .line 630
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v2}, Lcom/netflix/msl/io/MslArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1c

    .line 631
    invoke-virtual {v2, v0, v7}, Lcom/netflix/msl/io/MslArray;->getMslObject(ILcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/netflix/msl/keyx/KeyRequestData;->create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/keyx/KeyRequestData;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 623
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;
    :try_end_e
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_e .. :try_end_e} :catch_8
    .catch Lcom/netflix/msl/MslException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_e

    .line 688
    :catch_9
    move-exception v0

    .line 689
    invoke-virtual {v0, p4}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    .line 690
    invoke-virtual {v0, p3}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 691
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 692
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 693
    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslException;->setMessageId(J)Lcom/netflix/msl/MslException;

    .line 694
    throw v0

    .line 634
    :cond_1c
    :try_start_f
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    .line 637
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 639
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "peermastertoken"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/netflix/msl/tokens/MasterToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "peermastertoken"

    .line 640
    invoke-virtual {v1, v2, v7}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)V

    :goto_10
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 645
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v0, :cond_1e

    .line 646
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    :try_end_f
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_f .. :try_end_f} :catch_8
    .catch Lcom/netflix/msl/MslException; {:try_start_f .. :try_end_f} :catch_9

    move-result-object v3

    .line 653
    :goto_11
    :try_start_10
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "peeruseridtoken"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v2, "peeruseridtoken"

    .line 654
    invoke-virtual {v1, v2, v7}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    invoke-direct {v0, p1, v1, v3}, Lcom/netflix/msl/tokens/UserIdToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MasterToken;)V

    :goto_12
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;
    :try_end_10
    .catch Lcom/netflix/msl/MslException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_10 .. :try_end_10} :catch_8

    .line 663
    :try_start_11
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 664
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "peerservicetokens"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 665
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    const-string/jumbo v1, "peerservicetokens"

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslObject;->getMslArray(Ljava/lang/String;)Lcom/netflix/msl/io/MslArray;

    move-result-object v9

    .line 666
    const/4 v0, 0x0

    move v6, v0

    :goto_13
    invoke-virtual {v9}, Lcom/netflix/msl/io/MslArray;->size()I
    :try_end_11
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Lcom/netflix/msl/MslException; {:try_start_11 .. :try_end_11} :catch_9

    move-result v0

    if-ge v6, v0, :cond_20

    .line 668
    :try_start_12
    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v9, v6, v7}, Lcom/netflix/msl/io/MslArray;->getMslObject(ILcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    move-object v1, p1

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Map;)V

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Lcom/netflix/msl/MslException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_12 .. :try_end_12} :catch_8

    .line 666
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_13

    .line 640
    :cond_1d
    const/4 v0, 0x0

    goto :goto_10

    .line 648
    :cond_1e
    :try_start_13
    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    goto :goto_11

    .line 654
    :cond_1f
    const/4 v0, 0x0

    goto :goto_12

    .line 656
    :catch_a
    move-exception v0

    .line 657
    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    .line 658
    throw v0

    .line 669
    :catch_b
    move-exception v0

    .line 670
    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 671
    throw v0

    .line 675
    :cond_20
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    .line 696
    :goto_14
    return-void

    .line 677
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 679
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;
    :try_end_13
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Lcom/netflix/msl/MslException; {:try_start_13 .. :try_end_13} :catch_9

    goto :goto_14
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 934
    if-ne p0, p1, :cond_1

    .line 964
    :cond_0
    :goto_0
    return v0

    .line 935
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/msg/MessageHeader;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 936
    :cond_2
    check-cast p1, Lcom/netflix/msl/msg/MessageHeader;

    .line 937
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 938
    invoke-virtual {v2, v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_4
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    .line 939
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    if-ne v2, v3, :cond_19

    :cond_6
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    .line 941
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    if-ne v2, v3, :cond_19

    :cond_8
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    .line 943
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    if-nez v2, :cond_19

    iget-object v2, p1, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    if-nez v2, :cond_19

    :cond_a
    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    iget-wide v4, p1, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    .line 946
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-nez v2, :cond_19

    iget-object v2, p1, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-nez v2, :cond_19

    :cond_c
    iget-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    iget-boolean v3, p1, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    if-ne v2, v3, :cond_19

    iget-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    iget-boolean v3, p1, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    if-ne v2, v3, :cond_19

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    .line 950
    invoke-virtual {v2, v3}, Lcom/netflix/msl/msg/MessageCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    if-ne v2, v3, :cond_19

    :cond_e
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    .line 952
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    .line 953
    invoke-virtual {v2, v3}, Lcom/netflix/msl/keyx/KeyResponseData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-ne v2, v3, :cond_19

    :cond_10
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 955
    invoke-virtual {v2, v3}, Lcom/netflix/msl/userauth/UserAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-ne v2, v3, :cond_19

    :cond_12
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 957
    invoke-virtual {v2, v3}, Lcom/netflix/msl/tokens/UserIdToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-ne v2, v3, :cond_19

    :cond_14
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    .line 959
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 960
    invoke-virtual {v2, v3}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-ne v2, v3, :cond_19

    :cond_16
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 962
    invoke-virtual {v2, v3}, Lcom/netflix/msl/tokens/UserIdToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_17
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-ne v2, v3, :cond_19

    :cond_18
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    .line 964
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_19
    move v0, v1

    goto/16 :goto_0
.end method

.method public getCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    return-object v0
.end method

.method public getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    return-object v0
.end method

.method public getKeyRequestData()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    return-object v0
.end method

.method public getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    return-object v0
.end method

.method public getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 775
    iget-wide v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    return-wide v0
.end method

.method public getNonReplayableId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    return-object v0
.end method

.method public getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    return-object v0
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
    .line 887
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    return-object v0
.end method

.method public getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceTokens()Ljava/util/Set;
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
    .line 850
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 6

    .prologue
    .line 768
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUser()Lcom/netflix/msl/tokens/MslUser;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    return-object v0
.end method

.method public getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    return-object v0
.end method

.method public getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 972
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->hashCode()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    .line 973
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    .line 974
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    .line 975
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_3
    xor-int/2addr v0, v1

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    .line 976
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    .line 977
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_4
    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    .line 978
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    .line 979
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    .line 980
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageCapabilities;->hashCode()I

    move-result v0

    :goto_5
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    .line 981
    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    .line 982
    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyResponseData;->hashCode()I

    move-result v0

    :goto_6
    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 983
    invoke-virtual {v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->hashCode()I

    move-result v0

    :goto_7
    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 984
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->hashCode()I

    move-result v0

    :goto_8
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    .line 985
    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 986
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->hashCode()I

    move-result v0

    :goto_9
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 987
    invoke-virtual {v1}, Lcom/netflix/msl/tokens/UserIdToken;->hashCode()I

    move-result v2

    :cond_0
    xor-int/2addr v0, v2

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    .line 988
    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 973
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 974
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 975
    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 977
    goto/16 :goto_4

    :cond_6
    move v0, v2

    .line 980
    goto :goto_5

    :cond_7
    move v0, v2

    .line 982
    goto :goto_6

    :cond_8
    move v0, v2

    .line 983
    goto :goto_7

    :cond_9
    move v0, v2

    .line 984
    goto :goto_8

    :cond_a
    move v0, v2

    .line 986
    goto :goto_9
.end method

.method public isEncrypting()Z
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->encrypts()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandshake()Z
    .locals 1

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    return v0
.end method

.method public isRenewable()Z
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    return v0
.end method

.method public toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 5

    .prologue
    .line 896
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->encodings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 926
    :goto_0
    return-object v0

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:Lcom/netflix/msl/io/MslObject;

    invoke-virtual {p1, v0, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 903
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-interface {v1, v0, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 909
    :try_start_1
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-interface {v1, v0, p1, p2}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 915
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    .line 916
    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v3, :cond_1

    .line 917
    const-string/jumbo v3, "mastertoken"

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 920
    :goto_1
    const-string/jumbo v3, "headerdata"

    invoke-virtual {v2, v3, v0}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 921
    const-string/jumbo v0, "signature"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 922
    invoke-virtual {p1, v2, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 925
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->encodings:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 904
    :catch_0
    move-exception v0

    .line 905
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error encrypting the header data."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 910
    :catch_1
    move-exception v0

    .line 911
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Error signging the header data."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 919
    :cond_1
    const-string/jumbo v3, "entityauthdata"

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v2, v3, v4}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    goto :goto_1
.end method
