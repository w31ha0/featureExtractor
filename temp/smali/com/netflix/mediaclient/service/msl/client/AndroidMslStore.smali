.class public Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;
.super Ljava/lang/Object;
.source "AndroidMslStore.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/UserCredentialProvider;
.implements Lcom/netflix/msl/util/MslStore;


# static fields
.field private static final KEY_COOKIES:Ljava/lang/String; = "cookies"

.field private static final KEY_CRYPTO_CONTEXT:Ljava/lang/String; = "cryptoContext"

.field private static final KEY_CRYPTO_CONTEXTS:Ljava/lang/String; = "cryptoContexts"

.field private static final KEY_MASTER_TOKEN:Ljava/lang/String; = "masterToken"

.field private static final KEY_MASTER_TOKEN_SERIAL_NUMBER:Ljava/lang/String; = "mtSerialNumber"

.field private static final KEY_MASTER_TOKEN_SERVICE_TOKENS:Ljava/lang/String; = "mtServiceTokens"

.field private static final KEY_NETFLIXID:Ljava/lang/String; = "netflixID"

.field private static final KEY_NON_REPLAYABLE_ID:Ljava/lang/String; = "nonReplayableId"

.field private static final KEY_NON_REPLAYABLE_IDS:Ljava/lang/String; = "nonReplayableIds"

.field private static final KEY_SECURE_NETFLIXID:Ljava/lang/String; = "secureNetflixID"

.field private static final KEY_SERVICE_TOKEN:Ljava/lang/String; = "serviceToken"

.field private static final KEY_SERVICE_TOKEN_SET:Ljava/lang/String; = "serviceTokenSet"

.field private static final KEY_UNBOUND_SERVICE_TOKENS:Ljava/lang/String; = "unboundServiceTokens"

.field private static final KEY_USERID:Ljava/lang/String; = "userId"

.field private static final KEY_USERID_SERVICE_TOKENS:Ljava/lang/String; = "uitServiceTokens"

.field private static final KEY_USERID_TOKEN:Ljava/lang/String; = "userIdToken"

.field private static final KEY_USERID_TOKENS:Ljava/lang/String; = "userIdTokens"

.field private static final KEY_USERID_TOKEN_SERIAL_NUMBER:Ljava/lang/String; = "uitSerialNumber"

.field private static final TAG:Ljava/lang/String; = "nf_msl_store"


# instance fields
.field private final cryptoContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMslContext:Lcom/netflix/msl/util/MslContext;

.field private mMslEncoderFactory:Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;

.field private mRenewUserAuthenticationData:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

.field private mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

.field private final mtServiceTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nonReplayableIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final uitServiceTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final unboundServiceTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation
.end field

.field private final userAuthorizationCredentials:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;",
            ">;"
        }
    .end annotation
.end field

.field private final userIdTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/tokens/UserIdToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;)V
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userAuthorizationCredentials:Ljava/util/Map;

    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    if-nez p2, :cond_1

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "User can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 136
    iput-object p3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslEncoderFactory:Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;

    .line 137
    return-void
.end method

.method private addServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Z
    .locals 4

    .prologue
    .line 489
    const/4 v0, 0x0

    .line 491
    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->isUnbound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->addToSet(Ljava/util/Set;Lcom/netflix/msl/tokens/ServiceToken;)Z

    move-result v0

    .line 526
    :cond_0
    :goto_0
    return v0

    .line 501
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 503
    if-nez v0, :cond_2

    .line 504
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 505
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->addToSet(Ljava/util/Set;Lcom/netflix/msl/tokens/ServiceToken;)Z

    move-result v0

    .line 512
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->getUserIdTokenSerialNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 514
    if-nez v0, :cond_4

    .line 515
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 516
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->getUserIdTokenSerialNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->addToSet(Ljava/util/Set;Lcom/netflix/msl/tokens/ServiceToken;)Z

    move-result v0

    goto :goto_0
.end method

.method private addToSet(Ljava/util/Set;Lcom/netflix/msl/tokens/ServiceToken;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 538
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 540
    invoke-static {p2, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->equalServiceTokens(Lcom/netflix/msl/tokens/ServiceToken;Lcom/netflix/msl/tokens/ServiceToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    const/4 v0, 0x0

    .line 546
    :goto_0
    return v0

    .line 545
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 546
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doRemoveCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 6

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->saveLastProfileCredentials()V

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/ICryptoContext;

    .line 219
    if-eqz v0, :cond_1

    .line 222
    instance-of v1, v0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;

    if-eqz v1, :cond_2

    .line 223
    check-cast v0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->release()V

    .line 232
    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/MasterToken;

    .line 234
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    const-string/jumbo v1, "nf_msl_store"

    const-string/jumbo v2, "NOT Widevine crypto session! This should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not Widevine crypto context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/UserIdToken;

    .line 244
    invoke-virtual {v0, p1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->doRemoveUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)V

    goto :goto_1

    .line 249
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->doRemoveServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Z
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 252
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unexpected exception while removing master token bound service tokens."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private doRemoveServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 828
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p3, p2}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 829
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uit mtserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; mt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 834
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->doRemoveServiceTokensByName(Ljava/lang/String;)Z

    move-result v0

    .line 853
    :goto_0
    return v0

    .line 840
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 841
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->doRemoveServiceTokensByNameAndMasterToken(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    goto :goto_0

    .line 848
    :cond_2
    if-eqz p3, :cond_3

    .line 849
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->doRemoveServiceTokensByNameAndMasterTokenAndUserIdToken(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Z

    move-result v0

    goto :goto_0

    .line 852
    :cond_3
    const-string/jumbo v1, "nf_msl_store"

    const-string/jumbo v2, "doRemoveServiceToken:: service token %s was not removed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private doRemoveServiceTokensByName(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 758
    const/4 v0, 0x0

    .line 761
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 762
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v1, v3

    .line 765
    goto :goto_0

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 771
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 772
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 773
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 774
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v2

    .line 775
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 776
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/msl/tokens/ServiceToken;

    .line 779
    invoke-virtual {v2}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 782
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    move v4, v3

    .line 785
    goto :goto_2

    .line 787
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 788
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move v2, v4

    .line 792
    goto :goto_1

    .line 790
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 795
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 796
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 797
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 798
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 799
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v2

    .line 800
    :cond_6
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 801
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/msl/tokens/ServiceToken;

    .line 803
    invoke-virtual {v2}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 806
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    move v4, v3

    .line 809
    goto :goto_5

    .line 811
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 812
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    move v2, v4

    .line 816
    goto :goto_4

    .line 814
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 818
    :cond_9
    return v2
.end method

.method private doRemoveServiceTokensByNameAndMasterToken(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 630
    const/4 v1, 0x0

    .line 631
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 632
    if-eqz v0, :cond_2

    .line 633
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 634
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 638
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v1, v3

    .line 645
    goto :goto_0

    .line 649
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 650
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 651
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 652
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 653
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v2

    .line 654
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 655
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/msl/tokens/ServiceToken;

    .line 658
    if-eqz p1, :cond_4

    invoke-virtual {v2}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 662
    :cond_4
    invoke-virtual {v2, p2}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 666
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    move v4, v3

    .line 668
    goto :goto_2

    .line 669
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 670
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move v2, v4

    .line 674
    goto :goto_1

    .line 672
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 676
    :cond_7
    return v2
.end method

.method private doRemoveServiceTokensByNameAndMasterTokenAndUserIdToken(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 691
    const/4 v1, 0x0

    .line 692
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 693
    if-eqz v0, :cond_b

    .line 694
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    .line 695
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 696
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/ServiceToken;

    .line 699
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 704
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v2, v3

    .line 710
    goto :goto_0

    .line 712
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 713
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 720
    if-eqz v0, :cond_9

    .line 721
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 722
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 723
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/ServiceToken;

    .line 725
    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 729
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {v1, p2}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 733
    :cond_6
    invoke-virtual {v1, p3}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/UserIdToken;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 734
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v2, v3

    .line 735
    goto :goto_2

    .line 715
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 739
    :cond_8
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 740
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_9
    :goto_3
    return v2

    .line 742
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    move v2, v1

    goto :goto_1
.end method

.method private doRemoveUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 348
    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/MasterToken;

    .line 350
    invoke-virtual {p1, v0}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 359
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1, p1}, Lcom/netflix/msl/tokens/UserIdToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->doRemoveServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Z
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_2
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 367
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unexpected exception while removing user ID token bound service tokens."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move-object v2, v1

    goto :goto_0
.end method

.method private dumpAllServiceTokens()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method private dumpServiceTokens(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    return-void
.end method

.method private static equalServiceTokens(Lcom/netflix/msl/tokens/ServiceToken;Lcom/netflix/msl/tokens/ServiceToken;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 551
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v0

    .line 555
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/msl/tokens/ServiceToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/netflix/msl/tokens/ServiceToken;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/netflix/msl/tokens/ServiceToken;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->getData()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method private fromBase64(Ljava/lang/String;)Lcom/netflix/msl/io/MslObject;
    .locals 2

    .prologue
    .line 1054
    invoke-static {p1}, Lcom/netflix/mediaclient/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 1055
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslEncoderFactory:Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    return-object v0
.end method

.method private getMasterToken(J)Lcom/netflix/msl/tokens/MasterToken;
    .locals 5

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/MasterToken;

    .line 1348
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1359
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getServiceToken(Ljava/util/List;JLcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/tokens/ServiceToken;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;J",
            "Lcom/netflix/android/org/json/JSONObject;",
            ")",
            "Lcom/netflix/msl/tokens/ServiceToken;"
        }
    .end annotation

    .prologue
    .line 1327
    const-string/jumbo v0, "mtSerialNumber"

    const-wide/16 v2, -0x1

    invoke-virtual {p4, v0, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1328
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "Check if service token exist for given userIdToken serial number: %d and master token serial number: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1330
    const-string/jumbo v0, "serviceToken"

    invoke-virtual {p4, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->fromBase64(Ljava/lang/String;)Lcom/netflix/msl/io/MslObject;

    move-result-object v2

    .line 1331
    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    invoke-direct {p0, v4, v5}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getMasterToken(J)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getUserIdToken(J)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v4

    const/4 v5, 0x0

    check-cast v5, Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 1332
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/ServiceToken;

    .line 1333
    invoke-virtual {v1, v0}, Lcom/netflix/msl/tokens/ServiceToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1334
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v2, "Double bound service token found, use it!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :goto_0
    return-object v1

    .line 1339
    :cond_1
    const-string/jumbo v1, "nf_msl_store"

    const-string/jumbo v2, "Double bound service token not found, this should not happen! Use newly created service token!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1342
    goto :goto_0
.end method

.method private getUserIdToken(J)Lcom/netflix/msl/tokens/UserIdToken;
    .locals 5

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/UserIdToken;

    .line 1365
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1378
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static incrementNonReplayableId(J)J
    .locals 6

    .prologue
    const-wide/high16 v4, 0x20000000000000L

    const-wide/16 v0, 0x0

    .line 874
    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    cmp-long v2, p0, v4

    if-lez v2, :cond_1

    .line 875
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Non-replayable ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is outside the valid range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_1
    cmp-long v2, p0, v4

    if-nez v2, :cond_2

    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    goto :goto_0
.end method

.method private internalLoad()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1585
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getSecureStore(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1589
    :goto_0
    return-object v0

    .line 1587
    :catch_0
    move-exception v0

    .line 1588
    const-string/jumbo v1, "nf_msl_store"

    const-string/jumbo v2, "Failed to load MSL store from secure store"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1589
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private internalSave(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1596
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/repository/SecurityRepository;->saveSecureStore(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1601
    :goto_0
    return-void

    .line 1598
    :catch_0
    move-exception v0

    .line 1599
    const-string/jumbo v1, "nf_msl_store"

    const-string/jumbo v2, "Failed to saveSecureStore MSL store to secure store"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private loadCookies()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1237
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->internalLoad()Ljava/lang/String;

    move-result-object v0

    .line 1238
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1239
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "loadCookies:: Cookies not found..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    :try_start_0
    const-string/jumbo v2, "nf_msl_store"

    const-string/jumbo v3, "loadCookies:: MSL store found: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1247
    new-instance v2, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v2, v0}, Lcom/netflix/android/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1248
    if-eqz v2, :cond_3

    .line 1250
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v3, "loadCookies:: User authorization tokens map found, size: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 1252
    :goto_1
    invoke-virtual {v2}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1254
    invoke-virtual {v2, v0}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v3

    .line 1255
    if-eqz v3, :cond_2

    .line 1256
    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1257
    const-string/jumbo v5, "netflixID"

    invoke-virtual {v3, v5}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1258
    const-string/jumbo v6, "secureNetflixID"

    invoke-virtual {v3, v6}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1259
    invoke-direct {p0, v4, v5, v3}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->loadCookiesForUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1263
    :cond_3
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v2, "loadCookies:: User authorization tokens map not found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    const-string/jumbo v2, "nf_msl_store"

    const-string/jumbo v3, "loadCookies:: Failed to load cookies..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private loadCookiesForUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1305
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "load:: UserId %s, netflixID %s, Secure Netflix ID: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1307
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "UserID is empty! It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :goto_0
    return-void

    .line 1312
    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1313
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "NetflixID is empty! It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1317
    :cond_1
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1318
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "NetflixID is empty! It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1322
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userAuthorizationCredentials:Ljava/util/Map;

    new-instance v1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-direct {v1, p1, p2, p3}, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private loadMslStore()V
    .locals 22

    .prologue
    .line 1060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "nf_msl_store_json"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1061
    invoke-static {v12}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1062
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "loadMslStore:: MSL store not found..."

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    :try_start_0
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "loadMslStore:: MSL store found: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1070
    new-instance v13, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v13, v12}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1072
    const-string/jumbo v4, "cryptoContexts"

    invoke-virtual {v13, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v5

    .line 1073
    if-eqz v5, :cond_2

    .line 1075
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v6, "loadMslStore::Crypto contexts map found, size: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1077
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 1079
    invoke-virtual {v5, v4}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    .line 1080
    const-string/jumbo v7, "masterToken"

    invoke-virtual {v6, v7}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->fromBase64(Ljava/lang/String;)Lcom/netflix/msl/io/MslObject;

    move-result-object v7

    .line 1081
    new-instance v8, Lcom/netflix/msl/tokens/MasterToken;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    invoke-direct {v8, v9, v7}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    const-string/jumbo v9, "cryptoContext"

    invoke-virtual {v6, v9}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->restoreWidevineCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;

    move-result-object v6

    .line 1083
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1091
    :cond_2
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "loadMslStore::Crypto contexts map not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_3
    const-string/jumbo v4, "userIdTokens"

    invoke-virtual {v13, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v5

    .line 1096
    if-eqz v5, :cond_4

    .line 1098
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v6, "loadMslStore:: UserId tokens map found, size: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1100
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 1102
    invoke-virtual {v5, v4}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    .line 1103
    const-string/jumbo v7, "userId"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1104
    const-string/jumbo v8, "userIdToken"

    invoke-virtual {v6, v8}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->fromBase64(Ljava/lang/String;)Lcom/netflix/msl/io/MslObject;

    move-result-object v8

    .line 1106
    const-string/jumbo v9, "mtSerialNumber"

    invoke-virtual {v6, v9}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1107
    new-instance v6, Lcom/netflix/msl/tokens/UserIdToken;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getMasterToken(J)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v10

    invoke-direct {v6, v9, v8, v10}, Lcom/netflix/msl/tokens/UserIdToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1117
    :cond_4
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "loadMslStore:: UserId tokens map not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_5
    const-string/jumbo v4, "nonReplayableIds"

    invoke-virtual {v13, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v5

    .line 1121
    if-eqz v5, :cond_6

    .line 1123
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v6, "loadMslStore:: NonReplayableId map found, size: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1125
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 1127
    invoke-virtual {v5, v4}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    .line 1128
    const-string/jumbo v7, "mtSerialNumber"

    invoke-virtual {v6, v7}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1129
    const-string/jumbo v8, "nonReplayableId"

    invoke-virtual {v6, v8}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1135
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1138
    :cond_6
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "loadMslStore:: NonReplayableId map not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_7
    const-string/jumbo v4, "unboundServiceTokens"

    invoke-virtual {v13, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v11

    .line 1142
    if-eqz v11, :cond_8

    .line 1148
    const/4 v4, 0x0

    move v10, v4

    :goto_4
    invoke-virtual {v11}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    if-ge v10, v4, :cond_9

    .line 1150
    invoke-virtual {v11, v10}, Lcom/netflix/android/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->fromBase64(Ljava/lang/String;)Lcom/netflix/msl/io/MslObject;

    move-result-object v6

    .line 1151
    new-instance v4, Lcom/netflix/msl/tokens/ServiceToken;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    check-cast v9, Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-direct/range {v4 .. v9}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1148
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_4

    .line 1159
    :cond_8
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "loadMslStore:: UnboundServiceTokens set not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_9
    const-string/jumbo v4, "mtServiceTokens"

    invoke-virtual {v13, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v14

    .line 1165
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    if-eqz v14, :cond_c

    .line 1169
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "loadMslStore:: MasterTokenServiceToken map found, size: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v14}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1171
    const/4 v4, 0x0

    move v11, v4

    :goto_5
    invoke-virtual {v14}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    if-ge v11, v4, :cond_d

    .line 1173
    invoke-virtual {v14, v11}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v4

    .line 1174
    const-string/jumbo v5, "mtSerialNumber"

    invoke-virtual {v4, v5}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 1175
    const-string/jumbo v5, "serviceTokenSet"

    invoke-virtual {v4, v5}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v17

    .line 1176
    new-instance v18, Ljava/util/HashSet;

    invoke-virtual/range {v17 .. v17}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    const/4 v4, 0x0

    move v10, v4

    :goto_6
    invoke-virtual/range {v17 .. v17}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    if-ge v10, v4, :cond_b

    .line 1180
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v4

    .line 1181
    const-string/jumbo v5, "serviceToken"

    invoke-virtual {v4, v5}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->fromBase64(Ljava/lang/String;)Lcom/netflix/msl/io/MslObject;

    move-result-object v6

    .line 1183
    const-string/jumbo v5, "uitSerialNumber"

    const-wide/16 v8, -0x1

    invoke-virtual {v4, v5, v8, v9}, Lcom/netflix/android/org/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1185
    new-instance v4, Lcom/netflix/msl/tokens/ServiceToken;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getMasterToken(J)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getUserIdToken(J)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v8

    const/4 v9, 0x0

    check-cast v9, Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-direct/range {v4 .. v9}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 1186
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1188
    invoke-virtual {v4}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1189
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_a
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_6

    .line 1171
    :cond_b
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto/16 :goto_5

    .line 1198
    :cond_c
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "loadMslStore:: MasterTokenServiceToken map not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_d
    const-string/jumbo v4, "uitServiceTokens"

    invoke-virtual {v13, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v6

    .line 1202
    if-eqz v6, :cond_10

    .line 1204
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "loadMslStore:: UserIdsServiceToken map found, size: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1206
    const/4 v4, 0x0

    move v5, v4

    :goto_7
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_0

    .line 1208
    invoke-virtual {v6, v5}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v4

    .line 1209
    const-string/jumbo v7, "uitSerialNumber"

    invoke-virtual {v4, v7}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1210
    const-string/jumbo v8, "serviceTokenSet"

    invoke-virtual {v4, v8}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v8

    .line 1211
    new-instance v9, Ljava/util/HashSet;

    invoke-virtual {v8}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v8}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_f

    .line 1215
    invoke-virtual {v8, v4}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v10

    .line 1216
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v15, v1, v2, v10}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getServiceToken(Ljava/util/List;JLcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/tokens/ServiceToken;

    move-result-object v10

    .line 1217
    if-eqz v10, :cond_e

    .line 1218
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1213
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1206
    :cond_f
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_7

    .line 1226
    :cond_10
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "loadMslStore:: UserIdsServiceToken map not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1229
    :catch_0
    move-exception v4

    .line 1230
    const-string/jumbo v5, "nf_msl_store"

    const-string/jumbo v6, "loadMslStore:: Failed to load MSL store: try restore..."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v4, v6, v7}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1231
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->recoverLastProfileCredentialsOnMslStoreLoadFailure(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private recoverLastProfileCredentialsOnMslStoreLoadFailure(Ljava/lang/String;)V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1398
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "useragent_current_profile_id"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1399
    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1400
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "recoverLastProfileCredentialsOnMslStoreLoadFailure::No profile ID, user is not logged in, do NOT try to recover."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "recoverLastProfileCredentialsOnMslStoreLoadFailure::Current profile ID: %s, user is logged in, try to recover"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1411
    :try_start_0
    new-instance v6, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v6, p1}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1412
    const-string/jumbo v0, "cryptoContexts"

    invoke-virtual {v6, v0}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v7

    .line 1413
    if-eqz v7, :cond_5

    .line 1415
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "recoverLastProfileCredentialsOnMslStoreLoadFailure::Crypto contexts map found, size: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v7}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v4, v3

    move-object v0, v2

    .line 1417
    :goto_1
    invoke-virtual {v7}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_4

    .line 1419
    invoke-virtual {v7, v4}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    .line 1420
    const-string/jumbo v8, "masterToken"

    invoke-virtual {v1, v8}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->fromBase64(Ljava/lang/String;)Lcom/netflix/msl/io/MslObject;

    move-result-object v8

    .line 1421
    new-instance v1, Lcom/netflix/msl/tokens/MasterToken;

    iget-object v9, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    invoke-direct {v1, v9, v8}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)V

    .line 1422
    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Lcom/netflix/msl/tokens/MasterToken;->isNewerThan(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    move-object v0, v1

    .line 1417
    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 1427
    :cond_4
    if-nez v0, :cond_6

    .line 1428
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "recoverLastProfileCredentialsOnMslStoreLoadFailure::Master token NOT found, can not complete restore path! Log user out!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    const-string/jumbo v1, "nf_msl_store"

    const-string/jumbo v2, "recoverLastProfileCredentialsOnMslStoreLoadFailure:: Failed to recover authorization data from MSL store: log user out!!!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1433
    :cond_5
    :try_start_1
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "recoverLastProfileCredentialsOnMslStoreLoadFailure::Crypto contexts map not found, can not complete restore path! Log user out!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1438
    :cond_6
    const-string/jumbo v1, "userIdTokens"

    invoke-virtual {v6, v1}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v4

    .line 1439
    if-eqz v4, :cond_9

    .line 1441
    const-string/jumbo v1, "nf_msl_store"

    const-string/jumbo v6, "recoverLastProfileCredentialsOnMslStoreLoadFailure:: UserId tokens map found, size: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v3

    .line 1443
    :goto_2
    invoke-virtual {v4}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_a

    .line 1445
    invoke-virtual {v4, v1}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    .line 1446
    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1447
    const-string/jumbo v8, "userIdToken"

    invoke-virtual {v6, v8}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->fromBase64(Ljava/lang/String;)Lcom/netflix/msl/io/MslObject;

    move-result-object v8

    .line 1448
    const-string/jumbo v9, "mtSerialNumber"

    invoke-virtual {v6, v9}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1449
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v12

    cmp-long v6, v12, v10

    if-eqz v6, :cond_8

    .line 1450
    const-string/jumbo v6, "nf_msl_store"

    const-string/jumbo v7, "recoverLastProfileCredentialsOnMslStoreLoadFailure:: master token serial number %d != than one found in user id token! "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1443
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1454
    :cond_8
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1455
    new-instance v1, Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    invoke-direct {v1, v2, v8, v0}, Lcom/netflix/msl/tokens/UserIdToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 1456
    const-string/jumbo v2, "nf_msl_store"

    const-string/jumbo v4, "recoverLastProfileCredentialsOnMslStoreLoadFailure:: user id token found for profile %s, we should be able to attempt recovery! "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v2, v4, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1461
    :goto_3
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1462
    const-string/jumbo v2, "nf_msl_store"

    const-string/jumbo v4, "recoverLastProfileCredentialsOnMslStoreLoadFailure:: recovery data found, we will attempt recoveryfor %s "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v2, v4, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1463
    new-instance v2, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    invoke-direct {v2, v5, v0, v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;-><init>(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mRenewUserAuthenticationData:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    goto/16 :goto_0

    .line 1467
    :cond_9
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "recoverLastProfileCredentialsOnMslStoreLoadFailure:: UserId tokens map not found! Unable to recover, log user out!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_a
    move-object v1, v2

    goto :goto_3
.end method

.method private saveCookies()V
    .locals 7

    .prologue
    .line 1019
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "saveCookies:: started."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userAuthorizationCredentials:Ljava/util/Map;

    monitor-enter v1

    .line 1023
    :try_start_0
    new-instance v2, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 1024
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userAuthorizationCredentials:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1026
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 1027
    invoke-virtual {v2, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 1028
    const-string/jumbo v5, "userId"

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 1029
    iget-object v5, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userAuthorizationCredentials:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    .line 1030
    const-string/jumbo v5, "netflixID"

    iget-object v6, v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 1031
    const-string/jumbo v5, "secureNetflixID"

    iget-object v0, v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1034
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/netflix/android/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->internalSave(Ljava/lang/String;)V

    .line 1035
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1037
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "saveCookies:: done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    return-void
.end method

.method private saveLastProfileCredentials()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1498
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfileGuid()Ljava/lang/String;

    move-result-object v0

    .line 1499
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 1501
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1502
    const-string/jumbo v2, "nf_msl_store"

    const-string/jumbo v3, "Last known profile %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1507
    :goto_0
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    .line 1508
    if-eqz v0, :cond_1

    .line 1509
    new-instance v2, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;-><init>(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mRenewUserAuthenticationData:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    .line 1518
    :goto_1
    return-void

    .line 1504
    :cond_0
    const-string/jumbo v2, "nf_msl_store"

    const-string/jumbo v3, "Last known profile %s is not in sync in user agent %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1511
    :cond_1
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "Unable to find userID token for last known profile ID. This should NOT happen! Log user out!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->logoutUser()V

    goto :goto_1
.end method

.method private declared-synchronized saveMslStore()V
    .locals 10

    .prologue
    .line 895
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "saveSecureStore:: started."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    :try_start_1
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 901
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 902
    const-string/jumbo v0, "cryptoContexts"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 904
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/MasterToken;

    .line 906
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 907
    const-string/jumbo v5, "masterToken"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->toBase64(Lcom/netflix/msl/io/MslEncodable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 908
    const-string/jumbo v5, "cryptoContext"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->toJSONObject()Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 909
    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    :try_start_2
    const-string/jumbo v1, "nf_msl_store"

    const-string/jumbo v2, "Failed to saveSecureStore MSL store: "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1012
    :goto_1
    monitor-exit p0

    return-void

    .line 912
    :cond_0
    :try_start_3
    new-instance v3, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v3}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 913
    const-string/jumbo v0, "userIdTokens"

    invoke-virtual {v2, v0, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 915
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 917
    new-instance v5, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v5}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 918
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/UserIdToken;

    .line 919
    const-string/jumbo v6, "userId"

    invoke-virtual {v5, v6, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 920
    const-string/jumbo v0, "userIdToken"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->toBase64(Lcom/netflix/msl/io/MslEncodable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 923
    const-string/jumbo v0, "mtSerialNumber"

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 925
    invoke-virtual {v3, v5}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 928
    :cond_1
    :try_start_4
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 929
    const-string/jumbo v0, "nonReplayableIds"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 931
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 933
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 934
    const-string/jumbo v5, "mtSerialNumber"

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 935
    const-string/jumbo v5, "nonReplayableId"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 936
    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_3

    .line 940
    :cond_2
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 941
    const-string/jumbo v0, "unboundServiceTokens"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 943
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 944
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->toBase64(Lcom/netflix/msl/io/MslEncodable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_4

    .line 947
    :cond_3
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 948
    const-string/jumbo v0, "mtServiceTokens"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 950
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 952
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 953
    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 955
    const-string/jumbo v5, "mtSerialNumber"

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 957
    new-instance v5, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v5}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 958
    const-string/jumbo v6, "serviceTokenSet"

    invoke-virtual {v4, v6, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 960
    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 961
    if-eqz v0, :cond_4

    .line 962
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 963
    new-instance v6, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v6}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 964
    invoke-virtual {v5, v6}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 965
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 966
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getUserIdTokenSerialNumber()J

    move-result-wide v8

    .line 967
    const-string/jumbo v7, "uitSerialNumber"

    invoke-virtual {v6, v7, v8, v9}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 969
    :cond_5
    const-string/jumbo v7, "serviceToken"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->toBase64(Lcom/netflix/msl/io/MslEncodable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_5

    .line 974
    :cond_6
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 975
    const-string/jumbo v0, "uitServiceTokens"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 977
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 979
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 980
    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 982
    const-string/jumbo v5, "uitSerialNumber"

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 984
    new-instance v5, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v5}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 985
    const-string/jumbo v6, "serviceTokenSet"

    invoke-virtual {v4, v6, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 987
    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 988
    if-eqz v0, :cond_7

    .line 989
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 990
    new-instance v6, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v6}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 991
    invoke-virtual {v5, v6}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 992
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 993
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v8

    .line 994
    const-string/jumbo v7, "mtSerialNumber"

    invoke-virtual {v6, v7, v8, v9}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 996
    :cond_8
    const-string/jumbo v7, "serviceToken"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->toBase64(Lcom/netflix/msl/io/MslEncodable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_6

    .line 1005
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_msl_store_json"

    invoke-virtual {v2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1007
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "saveSecureStore:: done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method private toBase64(Lcom/netflix/msl/io/MslEncodable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslEncoderFactory:Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;

    sget-object v1, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-interface {p1, v0, v1}, Lcom/netflix/msl/io/MslEncodable;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 887
    invoke-static {v0}, Lcom/netflix/mediaclient/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private verifyServiceTokens(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 428
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 430
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/MasterToken;

    .line 433
    invoke-virtual {v0, v1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 438
    :goto_0
    if-nez v1, :cond_2

    .line 439
    new-instance v1, Lcom/netflix/msl/MslException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_MASTERTOKEN_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "st mtserialnumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/UserIdToken;

    .line 446
    invoke-virtual {v0, v1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/UserIdToken;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 451
    :goto_1
    if-nez v1, :cond_0

    .line 452
    new-instance v1, Lcom/netflix/msl/MslException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_USERIDTOKEN_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "st uitserialnumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getUserIdTokenSerialNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_4
    return-void

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addServiceTokens(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 460
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    .line 461
    :goto_0
    const-string/jumbo v3, "nf_msl_store"

    const-string/jumbo v4, "addServiceTokens:: %b"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    if-nez v0, :cond_1

    .line 485
    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    move v0, v1

    .line 460
    goto :goto_0

    .line 472
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->verifyServiceTokens(Ljava/util/Set;)V

    .line 475
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 476
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->addServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Z

    move-result v0

    .line 477
    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    :goto_3
    move v3, v0

    .line 478
    goto :goto_2

    :cond_3
    move v0, v1

    .line 477
    goto :goto_3

    .line 480
    :cond_4
    if-eqz v3, :cond_5

    .line 481
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->saveMslStore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 483
    :cond_5
    :try_start_2
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "No changes with service tokens, no need to saveSecureStore."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized addUserIdToken(Ljava/lang/String;Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v3, "addUserIdToken:: userId: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/MasterToken;

    .line 278
    invoke-virtual {p2, v0}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 283
    :goto_0
    if-nez v0, :cond_1

    .line 284
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uit mtserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 287
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/UserIdToken;

    .line 294
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/netflix/msl/tokens/UserIdToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "UserIDToken is NOT changed, do NOT saveSecureStore MSL store"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :goto_1
    monitor-exit p0

    return-void

    .line 298
    :cond_2
    :try_start_2
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "UserIDToken is changed, saveSecureStore MSL store"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->saveMslStore()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public declared-synchronized clearCryptoContexts()V
    .locals 2

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "clearCryptoContexts::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 268
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->saveMslStore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearRenewUserAuthenticationData()V
    .locals 1

    .prologue
    .line 1386
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mRenewUserAuthenticationData:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1387
    monitor-exit p0

    return-void

    .line 1386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearServiceTokens()V
    .locals 1

    .prologue
    .line 858
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 859
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 860
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 861
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->saveMslStore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    monitor-exit p0

    return-void

    .line 858
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearUserIdTokens()V
    .locals 2

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "clearUserIdTokens::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 382
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/UserIdToken;

    .line 383
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->doRemoveUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 386
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 387
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "Failed to remove all user IDs!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->saveMslStore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    monitor-exit p0

    return-void
.end method

.method public getAuthorizationCredentials(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;
    .locals 2

    .prologue
    .line 1545
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userAuthorizationCredentials:Ljava/util/Map;

    monitor-enter v1

    .line 1546
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userAuthorizationCredentials:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    monitor-exit v1

    return-object v0

    .line 1547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 4

    .prologue
    .line 165
    monitor-enter p0

    const/4 v1, 0x0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/MasterToken;

    .line 167
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/netflix/msl/tokens/MasterToken;->isNewerThan(Lcom/netflix/msl/tokens/MasterToken;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    move-object v1, v0

    .line 170
    goto :goto_0

    .line 172
    :cond_1
    monitor-exit p0

    return-object v1

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getMslUserState()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;
    .locals 1

    .prologue
    .line 1477
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    .line 1478
    if-nez v0, :cond_0

    .line 1479
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->masterTokenMissing:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    .line 1489
    :goto_0
    return-object v0

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1483
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->userExist:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    goto :goto_0

    .line 1486
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mRenewUserAuthenticationData:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    if-eqz v0, :cond_2

    .line 1487
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->recoveryUserDataAvailable:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    goto :goto_0

    .line 1489
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->userMissing:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    goto :goto_0
.end method

.method public declared-synchronized getNonReplayableId(Lcom/netflix/msl/tokens/MasterToken;)J
    .locals 5

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 186
    :goto_0
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->incrementNonReplayableId(J)J

    move-result-wide v0

    .line 187
    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->saveMslStore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-wide v0

    .line 185
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRenewUserAuthenticationData()Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;
    .locals 1

    .prologue
    .line 1382
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mRenewUserAuthenticationData:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getServiceTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "Lcom/netflix/msl/tokens/UserIdToken;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    monitor-enter p0

    if-eqz p2, :cond_1

    .line 571
    if-nez p1, :cond_0

    .line 572
    :try_start_0
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_NULL:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 575
    :cond_0
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 576
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uit mtserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; mt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 582
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 585
    if-eqz p1, :cond_3

    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 587
    if-eqz v0, :cond_3

    .line 588
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 589
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v3

    if-nez v3, :cond_2

    .line 590
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 598
    :cond_3
    if-eqz p2, :cond_5

    .line 599
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 600
    if-eqz v0, :cond_5

    .line 601
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 602
    invoke-virtual {v0, p1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 603
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 609
    :cond_5
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;
    .locals 4

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "getUserIdToken:: userId: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 332
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/UserIdToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lcom/netflix/msl/util/MslContext;Z)V
    .locals 2

    .prologue
    .line 1280
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1281
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MSL Context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1283
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    .line 1285
    if-eqz p2, :cond_1

    .line 1287
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "init:: force clear MSL store started."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->clearCryptoContexts()V

    .line 1289
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->saveCookies()V

    .line 1291
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "init:: force clear MSL store done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1301
    :goto_0
    monitor-exit p0

    return-void

    .line 1294
    :cond_1
    :try_start_2
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "load:: started."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->loadMslStore()V

    .line 1297
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->loadCookies()V

    .line 1299
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "load:: done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isUserLoggedIn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1527
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1537
    :cond_0
    :goto_0
    return v0

    .line 1530
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 1532
    if-eqz v1, :cond_0

    .line 1536
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v1

    .line 1537
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized removeCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 1

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->doRemoveCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)V

    .line 203
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->saveMslStore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 1

    .prologue
    .line 615
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->doRemoveServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->saveMslStore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :cond_0
    monitor-exit p0

    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 1

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->doRemoveUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)V

    .line 338
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->saveMslStore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit p0

    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCryptoContext(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 2

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "setCryptoContex:: starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-nez p2, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->removeCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)V

    .line 159
    :goto_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "setCryptoContex:: done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->saveMslStore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAuthorizationCredentials(Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1553
    .line 1555
    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userAuthorizationCredentials:Ljava/util/Map;

    monitor-enter v3

    .line 1557
    if-nez p2, :cond_1

    .line 1559
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userAuthorizationCredentials:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1574
    :goto_0
    if-eqz v1, :cond_0

    .line 1575
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->saveCookies()V

    .line 1577
    :cond_0
    monitor-exit v3

    .line 1578
    return-void

    .line 1565
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userAuthorizationCredentials:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    .line 1566
    if-nez v0, :cond_2

    .line 1571
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userAuthorizationCredentials:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1577
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1569
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public declared-synchronized updateUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 312
    monitor-enter p0

    if-nez p1, :cond_0

    .line 313
    :try_start_0
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_IDENTITY_INVALID:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Old userId can not be null"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 315
    :cond_0
    if-nez p2, :cond_1

    .line 316
    :try_start_1
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_IDENTITY_INVALID:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "New userId can not be null"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/UserIdToken;

    .line 321
    if-nez v0, :cond_2

    .line 322
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_IDENTITY_NOT_ASSOCIATED_WITH_ENTITY:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UserIdToken not found for given old user ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->saveMslStore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    monitor-exit p0

    return-void
.end method
