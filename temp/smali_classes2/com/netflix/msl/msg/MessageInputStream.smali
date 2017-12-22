.class public Lcom/netflix/msl/msg/MessageInputStream;
.super Ljava/io/InputStream;
.source "MessageInputStream.java"


# instance fields
.field private closeSource:Z

.field private final cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private currentPayload:Ljava/io/ByteArrayInputStream;

.field private eom:Z

.field private handshake:Ljava/lang/Boolean;

.field private final header:Lcom/netflix/msl/msg/Header;

.field private final keyxCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private payloadIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private payloadSequenceNumber:J

.field private final payloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private readException:Ljava/io/IOException;

.field private final source:Ljava/io/InputStream;

.field private final tokenizer:Lcom/netflix/msl/io/MslTokenizer;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/io/InputStream;Ljava/util/Set;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/io/InputStream;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 202
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 785
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadSequenceNumber:J

    .line 787
    iput-boolean v3, p0, Lcom/netflix/msl/msg/MessageInputStream;->eom:Z

    .line 789
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->handshake:Ljava/lang/Boolean;

    .line 792
    iput-boolean v3, p0, Lcom/netflix/msl/msg/MessageInputStream;->closeSource:Z

    .line 800
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    .line 802
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    .line 804
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    .line 807
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->readException:Ljava/io/IOException;

    .line 204
    iput-object p1, p0, Lcom/netflix/msl/msg/MessageInputStream;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 205
    iput-object p2, p0, Lcom/netflix/msl/msg/MessageInputStream;->source:Ljava/io/InputStream;

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->createTokenizer(Ljava/io/InputStream;)Lcom/netflix/msl/io/MslTokenizer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->tokenizer:Lcom/netflix/msl/io/MslTokenizer;

    .line 209
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->tokenizer:Lcom/netflix/msl/io/MslTokenizer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslTokenizer;->more(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->MESSAGE_DATA_MISSING:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "header"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 211
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->tokenizer:Lcom/netflix/msl/io/MslTokenizer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslTokenizer;->nextObject(I)Lcom/netflix/msl/io/MslObject;
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 215
    invoke-static {p1, v0, p4}, Lcom/netflix/msl/msg/Header;->parseHeader(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Ljava/util/Map;)Lcom/netflix/msl/msg/Header;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    .line 220
    :try_start_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    instance-of v0, v0, Lcom/netflix/msl/msg/ErrorHeader;

    if-eqz v0, :cond_2

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->keyxCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 320
    :cond_1
    return-void

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    check-cast v0, Lcom/netflix/msl/msg/MessageHeader;

    .line 228
    invoke-static {p1, v0, p3}, Lcom/netflix/msl/msg/MessageInputStream;->getKeyxCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/util/Set;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->keyxCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 233
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->keyxCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    if-nez v1, :cond_5

    .line 234
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 243
    :goto_0
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->isHandshake()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 244
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 246
    :cond_4
    new-instance v1, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->HANDSHAKE_DATA_MISSING:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/netflix/msl/MslException; {:try_start_2 .. :try_end_2} :catch_1

    .line 305
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 306
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    instance-of v0, v0, Lcom/netflix/msl/msg/MessageHeader;

    if-eqz v0, :cond_e

    .line 307
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    check-cast v0, Lcom/netflix/msl/msg/MessageHeader;

    .line 308
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    .line 309
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 310
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 311
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 312
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/MslException;->setMessageId(J)Lcom/netflix/msl/MslException;

    .line 318
    :goto_1
    throw v1

    .line 239
    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->keyxCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    goto :goto_0

    .line 252
    :cond_6
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 256
    :cond_7
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v2

    .line 257
    invoke-interface {v2, p1, v1}, Lcom/netflix/msl/tokens/TokenFactory;->isMasterTokenRevoked(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslError;

    move-result-object v3

    .line 258
    if-eqz v3, :cond_8

    .line 259
    new-instance v0, Lcom/netflix/msl/MslMasterTokenException;

    invoke-direct {v0, v3, v1}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v0

    .line 264
    :cond_8
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v3

    .line 265
    if-eqz v3, :cond_9

    .line 266
    invoke-interface {v2, p1, v1, v3}, Lcom/netflix/msl/tokens/TokenFactory;->isUserIdTokenRevoked(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslError;

    move-result-object v4

    .line 267
    if-eqz v4, :cond_9

    .line 268
    new-instance v0, Lcom/netflix/msl/MslUserIdTokenException;

    invoke-direct {v0, v4, v3}, Lcom/netflix/msl/MslUserIdTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/UserIdToken;)V

    throw v0

    .line 272
    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/netflix/msl/tokens/MasterToken;->isExpired(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 275
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 276
    :cond_a
    new-instance v1, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->MESSAGE_EXPIRED:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_b
    invoke-interface {v2, p1, v1}, Lcom/netflix/msl/tokens/TokenFactory;->isMasterTokenRenewable(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslError;

    move-result-object v2

    .line 284
    if-eqz v2, :cond_c

    .line 285
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    const-string/jumbo v1, "Master token is expired and not renewable."

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_c
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getNonReplayableId()Ljava/lang/Long;

    move-result-object v2

    .line 292
    if-eqz v2, :cond_1

    .line 295
    if-nez v1, :cond_d

    .line 296
    new-instance v1, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->INCOMPLETE_NONREPLAYABLE_MESSAGE:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_d
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v3

    .line 301
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, p1, v1, v4, v5}, Lcom/netflix/msl/tokens/TokenFactory;->acceptNonReplayableId(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;J)Lcom/netflix/msl/MslError;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_1

    .line 303
    new-instance v2, Lcom/netflix/msl/MslMessageException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Lcom/netflix/msl/MslException; {:try_start_3 .. :try_end_3} :catch_1

    .line 314
    :cond_e
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    check-cast v0, Lcom/netflix/msl/msg/ErrorHeader;

    .line 315
    invoke-virtual {v0}, Lcom/netflix/msl/msg/ErrorHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 316
    invoke-virtual {v0}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netflix/msl/MslException;->setMessageId(J)Lcom/netflix/msl/MslException;

    goto/16 :goto_1
.end method

.method private static getKeyxCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/util/Set;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageHeader;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;)",
            "Lcom/netflix/msl/crypto/ICryptoContext;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 96
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageHeader;->getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v3

    .line 99
    if-nez v3, :cond_0

    .line 127
    :goto_0
    return-object v1

    .line 104
    :cond_0
    invoke-virtual {v3}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->isDecrypted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    new-instance v1, Lcom/netflix/msl/crypto/SessionCryptoContext;

    invoke-direct {v1, p0, v0}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v3}, Lcom/netflix/msl/keyx/KeyResponseData;->getKeyExchangeScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v4

    .line 110
    invoke-virtual {p0, v4}, Lcom/netflix/msl/util/MslContext;->getKeyExchangeFactory(Lcom/netflix/msl/keyx/KeyExchangeScheme;)Lcom/netflix/msl/keyx/KeyExchangeFactory;

    move-result-object v5

    .line 111
    if-nez v5, :cond_2

    .line 112
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v4}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 118
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/keyx/KeyRequestData;

    .line 120
    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyRequestData;->getKeyExchangeScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v7

    .line 123
    invoke-virtual {v4, v7}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 127
    :try_start_0
    invoke-virtual {v5, p0, v0, v3, v2}, Lcom/netflix/msl/keyx/KeyExchangeFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_0
    .catch Lcom/netflix/msl/MslKeyExchangeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    throw v0

    .line 131
    :catch_1
    move-exception v0

    .line 132
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    throw v0

    .line 134
    :catch_2
    move-exception v0

    .line 135
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    throw v0

    .line 137
    :catch_3
    move-exception v0

    .line 138
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    throw v0

    :cond_4
    move-object v1, v0

    .line 141
    goto :goto_1

    .line 145
    :cond_5
    if-eqz v1, :cond_a

    .line 146
    instance-of v0, v1, Lcom/netflix/msl/MslKeyExchangeException;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 147
    check-cast v0, Lcom/netflix/msl/MslKeyExchangeException;

    throw v0

    .line 148
    :cond_6
    instance-of v0, v1, Lcom/netflix/msl/MslEncodingException;

    if-eqz v0, :cond_7

    .line 149
    check-cast v1, Lcom/netflix/msl/MslEncodingException;

    throw v1

    .line 150
    :cond_7
    instance-of v0, v1, Lcom/netflix/msl/MslMasterTokenException;

    if-eqz v0, :cond_8

    .line 151
    check-cast v1, Lcom/netflix/msl/MslMasterTokenException;

    throw v1

    .line 152
    :cond_8
    instance-of v0, v1, Lcom/netflix/msl/MslEntityAuthException;

    if-eqz v0, :cond_9

    .line 153
    check-cast v1, Lcom/netflix/msl/MslEntityAuthException;

    throw v1

    .line 154
    :cond_9
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unexpected exception caught during key exchange."

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 159
    :cond_a
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_RESPONSE_REQUEST_MISMATCH:Lcom/netflix/msl/MslError;

    invoke-interface {p2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 3

    .prologue
    .line 549
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 564
    :cond_0
    :goto_0
    return v0

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 554
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 555
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    move v1, v0

    .line 557
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    .line 559
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 560
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->closeSource:Z

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->source:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->isHandshake()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->nextData()Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 596
    if-nez v0, :cond_2

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public closeSource(Z)V
    .locals 0

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/netflix/msl/msg/MessageInputStream;->closeSource:Z

    .line 577
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 329
    return-void
.end method

.method public getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    instance-of v0, v0, Lcom/netflix/msl/msg/ErrorHeader;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    check-cast v0, Lcom/netflix/msl/msg/ErrorHeader;

    .line 490
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 506
    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v1}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v0

    .line 511
    :goto_0
    return-object v0

    .line 508
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Lcom/netflix/msl/msg/ErrorHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeyExchangeCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->keyxCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    return-object v0
.end method

.method public getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    instance-of v0, v0, Lcom/netflix/msl/msg/MessageHeader;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->header:Lcom/netflix/msl/msg/Header;

    check-cast v0, Lcom/netflix/msl/msg/MessageHeader;

    .line 481
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPayloadCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    return-object v0
.end method

.method public getUser()Lcom/netflix/msl/tokens/MslUser;
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    .line 523
    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 525
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    goto :goto_0
.end method

.method public isHandshake()Z
    .locals 3

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    .line 450
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 472
    :goto_0
    return v0

    .line 453
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->isHandshake()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->handshake:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 461
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->nextData()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    .line 462
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_2

    .line 463
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->handshake:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->handshake:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 466
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Error reading the payload chunk."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->readException:Ljava/io/IOException;

    .line 467
    throw v0
.end method

.method public mark(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 611
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 613
    iput-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    .line 614
    :goto_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    .line 620
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    .line 623
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 631
    :goto_1
    return-void

    .line 629
    :cond_1
    iput-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    .line 630
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x1

    return v0
.end method

.method protected nextData()Ljava/io/ByteArrayInputStream;
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 374
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    .line 375
    if-nez v0, :cond_0

    .line 376
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Read attempted with error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    iget-object v3, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    .line 426
    :goto_0
    return-object v0

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->nextMslObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v3

    .line 384
    if-nez v3, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 385
    :cond_2
    new-instance v4, Lcom/netflix/msl/msg/PayloadChunk;

    iget-object v5, p0, Lcom/netflix/msl/msg/MessageInputStream;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v6, p0, Lcom/netflix/msl/msg/MessageInputStream;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-direct {v4, v5, v3, v6}, Lcom/netflix/msl/msg/PayloadChunk;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 389
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    .line 390
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v5

    .line 391
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v6

    .line 392
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v7

    .line 393
    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->getMessageId()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 394
    new-instance v1, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->PAYLOAD_MESSAGE_ID_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "payload mid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->getMessageId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " header mid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v1, v3}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    .line 396
    invoke-virtual {v0, v5}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    .line 397
    invoke-virtual {v0, v6}, Lcom/netflix/msl/MslMessageException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    .line 398
    invoke-virtual {v0, v7}, Lcom/netflix/msl/MslMessageException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 400
    :cond_3
    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->getSequenceNumber()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadSequenceNumber:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 401
    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->PAYLOAD_SEQUENCE_NUMBER_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "payload seqno "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->getSequenceNumber()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " expected seqno "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadSequenceNumber:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0, v3}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    .line 403
    invoke-virtual {v0, v5}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    .line 404
    invoke-virtual {v0, v6}, Lcom/netflix/msl/MslMessageException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    .line 405
    invoke-virtual {v0, v7}, Lcom/netflix/msl/MslMessageException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    move-result-object v0

    throw v0

    .line 407
    :cond_4
    iget-wide v6, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadSequenceNumber:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadSequenceNumber:J

    .line 412
    iget-object v3, p0, Lcom/netflix/msl/msg/MessageInputStream;->handshake:Ljava/lang/Boolean;

    if-nez v3, :cond_5

    .line 413
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 414
    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->isEndOfMessage()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->getData()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_7

    move v0, v1

    .line 413
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->handshake:Ljava/lang/Boolean;

    .line 418
    :cond_5
    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->isEndOfMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 419
    iput-boolean v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->eom:Z

    .line 423
    :cond_6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/PayloadChunk;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 424
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    goto/16 :goto_0

    .line 414
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected nextMslObject()Lcom/netflix/msl/io/MslObject;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v1

    .line 340
    if-nez v1, :cond_0

    .line 341
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Read attempted with error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    iget-boolean v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->eom:Z

    if-eqz v1, :cond_1

    .line 354
    :goto_0
    return-object v0

    .line 350
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->tokenizer:Lcom/netflix/msl/io/MslTokenizer;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/netflix/msl/io/MslTokenizer;->more(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 351
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->eom:Z
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "payloadchunk"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 354
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->tokenizer:Lcom/netflix/msl/io/MslTokenizer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/io/MslTokenizer;->nextObject(I)Lcom/netflix/msl/io/MslObject;
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public read()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 646
    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 647
    invoke-virtual {p0, v1}, Lcom/netflix/msl/msg/MessageInputStream;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 648
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    aget-byte v0, v1, v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    .prologue
    .line 718
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/msl/msg/MessageInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 657
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageInputStream;->readException:Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 658
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->readException:Ljava/io/IOException;

    .line 659
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->readException:Ljava/io/IOException;

    .line 660
    throw v0

    .line 665
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->isHandshake()Z
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 710
    :cond_1
    :goto_0
    return v0

    .line 667
    :catch_0
    move-exception v0

    .line 672
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->readException:Ljava/io/IOException;

    .line 673
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Error reading the payload chunk."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 677
    :cond_2
    const/4 v1, 0x0

    .line 678
    :cond_3
    :goto_1
    if-ge v1, p3, :cond_6

    .line 679
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v2

    .line 682
    :goto_2
    if-eq v2, v0, :cond_5

    .line 683
    add-int/2addr v1, v2

    .line 684
    goto :goto_1

    :cond_4
    move v2, v0

    .line 679
    goto :goto_2

    .line 689
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->nextData()Ljava/io/ByteArrayInputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    .line 690
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_3

    .line 708
    :cond_6
    if-nez v1, :cond_7

    if-gtz p3, :cond_1

    :cond_7
    move v0, v1

    .line 710
    goto :goto_0

    .line 692
    :catch_1
    move-exception v0

    .line 695
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Error reading the payload chunk."

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 696
    if-lez v1, :cond_8

    .line 697
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageInputStream;->readException:Ljava/io/IOException;

    move v0, v1

    .line 698
    goto :goto_0

    .line 702
    :cond_8
    throw v2
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    .line 731
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    .line 733
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->payloadIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    .line 738
    :goto_1
    return-void

    .line 736
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    goto :goto_1
.end method

.method public skip(J)J
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 746
    const/4 v0, 0x0

    move v4, v0

    .line 747
    :cond_0
    :goto_0
    int-to-long v0, v4

    cmp-long v0, v0, p1

    if-gez v0, :cond_3

    .line 748
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    int-to-long v6, v4

    sub-long v6, p1, v6

    invoke-virtual {v0, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    move-result-wide v0

    .line 751
    :goto_1
    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    .line 752
    int-to-long v4, v4

    add-long/2addr v0, v4

    long-to-int v0, v0

    move v4, v0

    .line 753
    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 748
    goto :goto_1

    .line 758
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->nextData()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;

    .line 759
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageInputStream;->currentPayload:Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Lcom/netflix/msl/MslInternalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 767
    :cond_3
    int-to-long v0, v4

    return-wide v0

    .line 761
    :catch_0
    move-exception v0

    .line 762
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Cannot skip data off an error message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 763
    :catch_1
    move-exception v0

    .line 764
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Error skipping in the payload chunk."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
