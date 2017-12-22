.class public Lcom/netflix/msl/msg/MslControl;
.super Ljava/lang/Object;
.source "MslControl.java"


# instance fields
.field private final NULL_MASTER_TOKEN:Lcom/netflix/msl/tokens/MasterToken;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private filterFactory:Lcom/netflix/msl/msg/FilterStreamFactory;

.field private final masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation
.end field

.field private final messageRegistry:Lcom/netflix/msl/msg/ErrorMessageRegistry;

.field private final renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/netflix/msl/tokens/MasterToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final streamFactory:Lcom/netflix/msl/msg/MessageStreamFactory;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 788
    invoke-direct {p0, p1, v0, v0}, Lcom/netflix/msl/msg/MslControl;-><init>(ILcom/netflix/msl/msg/MessageStreamFactory;Lcom/netflix/msl/msg/ErrorMessageRegistry;)V

    .line 789
    return-void
.end method

.method public constructor <init>(ILcom/netflix/msl/msg/MessageStreamFactory;Lcom/netflix/msl/msg/ErrorMessageRegistry;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3764
    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl;->filterFactory:Lcom/netflix/msl/msg/FilterStreamFactory;

    .line 3771
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl;->renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3779
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl;->masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 801
    if-gez p1, :cond_0

    .line 802
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number of threads must be non-negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_0
    if-eqz p2, :cond_1

    :goto_0
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl;->streamFactory:Lcom/netflix/msl/msg/MessageStreamFactory;

    .line 808
    if-eqz p3, :cond_2

    :goto_1
    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl;->messageRegistry:Lcom/netflix/msl/msg/ErrorMessageRegistry;

    .line 811
    if-lez p1, :cond_3

    .line 812
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    .line 819
    :goto_2
    :try_start_0
    new-instance v1, Lcom/netflix/msl/msg/MslControl$DummyMslContext;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/netflix/msl/msg/MslControl$DummyMslContext;-><init>(Lcom/netflix/msl/msg/MslControl$1;)V

    .line 820
    invoke-virtual {v1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v8

    .line 821
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 822
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v10, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 823
    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "HmacSHA256"

    invoke-direct {v11, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 824
    new-instance v0, Lcom/netflix/msl/tokens/MasterToken;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x1

    const-string/jumbo v9, "dummy"

    invoke-direct/range {v0 .. v11}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/util/Date;Ljava/util/Date;JJLcom/netflix/msl/io/MslObject;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl;->NULL_MASTER_TOKEN:Lcom/netflix/msl/tokens/MasterToken;
    :try_end_0
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 830
    return-void

    .line 805
    :cond_1
    new-instance p2, Lcom/netflix/msl/msg/MessageStreamFactory;

    invoke-direct {p2}, Lcom/netflix/msl/msg/MessageStreamFactory;-><init>()V

    goto :goto_0

    .line 808
    :cond_2
    new-instance p3, Lcom/netflix/msl/msg/MslControl$DummyMessageRegistry;

    invoke-direct {p3, v1}, Lcom/netflix/msl/msg/MslControl$DummyMessageRegistry;-><init>(Lcom/netflix/msl/msg/MslControl$1;)V

    goto :goto_1

    .line 814
    :cond_3
    new-instance v0, Lcom/netflix/msl/msg/MslControl$SynchronousExecutor;

    invoke-direct {v0, v1}, Lcom/netflix/msl/msg/MslControl$SynchronousExecutor;-><init>(Lcom/netflix/msl/msg/MslControl$1;)V

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    goto :goto_2

    .line 825
    :catch_0
    move-exception v0

    .line 826
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unexpected exception when constructing dummy master token."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 827
    :catch_1
    move-exception v0

    .line 828
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unexpected exception when constructing dummy master token."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    invoke-static {p0}, Lcom/netflix/msl/msg/MslControl;->getIdentity(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;ZZI)Lcom/netflix/msl/msg/MslControl$SendReceiveResult;
    .locals 1

    .prologue
    .line 189
    invoke-direct/range {p0 .. p8}, Lcom/netflix/msl/msg/MslControl;->sendReceive(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;ZZI)Lcom/netflix/msl/msg/MslControl$SendReceiveResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$SendResult;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MslControl$ErrorResult;
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/msl/msg/MslControl;->buildErrorResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$SendResult;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MslControl$ErrorResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/msg/MslControl;->buildRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageInputStream;
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/msl/msg/MslControl;->receive(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageInputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->messageRegistry:Lcom/netflix/msl/msg/ErrorMessageRegistry;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct/range {p0 .. p8}, Lcom/netflix/msl/msg/MslControl;->sendError(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/msl/msg/MslControl;->buildResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;
    .locals 1

    .prologue
    .line 189
    invoke-direct/range {p0 .. p5}, Lcom/netflix/msl/msg/MslControl;->send(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;

    move-result-object v0

    return-object v0
.end method

.method private acquireRenewalLock(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/util/concurrent/BlockingQueue;Lcom/netflix/msl/msg/MessageBuilder;J)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageContext;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/netflix/msl/tokens/MasterToken;",
            ">;",
            "Lcom/netflix/msl/msg/MessageBuilder;",
            "J)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1980
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 1981
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    .line 1982
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 1999
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRemoteTime()Ljava/util/Date;

    move-result-object v2

    .line 2000
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willEncryptPayloads()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2001
    :cond_0
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isIntegrityProtected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willIntegrityProtectPayloads()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2002
    :cond_1
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->isRenewable()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v1, :cond_2

    .line 2003
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    if-eqz v1, :cond_3

    .line 2004
    invoke-virtual {v1, v2}, Lcom/netflix/msl/tokens/MasterToken;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    if-nez v0, :cond_4

    if-eqz v6, :cond_4

    .line 2005
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willEncryptHeader()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willIntegrityProtectHeader()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2006
    :cond_4
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isRequestingTokens()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_5

    if-eqz v6, :cond_10

    if-nez v0, :cond_10

    :cond_5
    move-object v2, v0

    move-object v3, v1

    .line 2012
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/BlockingQueue;

    .line 2016
    if-nez v0, :cond_7

    move v0, v4

    .line 2118
    :goto_1
    return v0

    .line 2021
    :cond_7
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p5, p6, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/MasterToken;

    .line 2024
    if-nez v1, :cond_8

    .line 2025
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v1, "acquireRenewalLock timed out."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2029
    :cond_8
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 2033
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->NULL_MASTER_TOKEN:Lcom/netflix/msl/tokens/MasterToken;

    if-eq v1, v0, :cond_6

    .line 2043
    if-eqz v3, :cond_9

    invoke-virtual {v3, v1}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2044
    :cond_9
    invoke-direct {p0, p1, v3}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 2045
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->getNewestMasterToken(Lcom/netflix/msl/util/MslContext;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    .line 2050
    if-nez v0, :cond_a

    move-object v3, v0

    .line 2051
    goto :goto_0

    :cond_a
    move-object v1, v0

    .line 2062
    :goto_2
    if-eqz v6, :cond_b

    if-eqz v2, :cond_c

    :cond_b
    if-eqz v2, :cond_15

    .line 2063
    invoke-virtual {v2, v1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2065
    :cond_c
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/netflix/msl/util/MslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    .line 2066
    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2070
    :goto_3
    invoke-virtual {p4, v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->setAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    .line 2074
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRemoteTime()Ljava/util/Date;

    move-result-object v2

    .line 2075
    invoke-virtual {v1, v2}, Lcom/netflix/msl/tokens/MasterToken;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v2, v0

    move-object v3, v1

    .line 2076
    goto :goto_0

    .line 2066
    :cond_d
    const/4 v0, 0x0

    goto :goto_3

    .line 2081
    :cond_e
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->isRenewable()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1, v3}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v2, v0

    move-object v3, v1

    .line 2082
    goto :goto_0

    .line 2087
    :cond_f
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isRequestingTokens()Z

    move-result v2

    if-eqz v2, :cond_10

    if-nez v0, :cond_10

    move-object v2, v0

    move-object v3, v1

    .line 2088
    goto/16 :goto_0

    .line 2100
    :cond_10
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRemoteTime()Ljava/util/Date;

    move-result-object v2

    .line 2101
    if-eqz v1, :cond_12

    invoke-virtual {v1, v2}, Lcom/netflix/msl/tokens/MasterToken;->isRenewable(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_12

    if-nez v0, :cond_11

    .line 2102
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    :cond_11
    if-eqz v0, :cond_14

    .line 2103
    invoke-virtual {v0, v2}, Lcom/netflix/msl/tokens/UserIdToken;->isRenewable(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2106
    :cond_12
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/BlockingQueue;

    .line 2110
    if-nez v0, :cond_13

    move v0, v4

    .line 2111
    goto/16 :goto_1

    :cond_13
    move v0, v5

    .line 2114
    goto/16 :goto_1

    :cond_14
    move v0, v5

    .line 2118
    goto/16 :goto_1

    :cond_15
    move-object v0, v2

    goto :goto_3

    :cond_16
    move-object v1, v3

    goto :goto_2
.end method

.method private buildErrorResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$SendResult;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MslControl$ErrorResult;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1229
    iget-object v0, p3, Lcom/netflix/msl/msg/MslControl$SendResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageOutputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v8

    .line 1230
    iget-object v0, p3, Lcom/netflix/msl/msg/MslControl$SendResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageOutputStream;->getPayloads()Ljava/util/List;

    move-result-object v9

    .line 1231
    invoke-virtual {p4}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorCode()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v0

    .line 1232
    sget-object v2, Lcom/netflix/msl/msg/MslControl$1;->$SwitchMap$com$netflix$msl$MslConstants$ResponseCode:[I

    invoke-virtual {v0}, Lcom/netflix/msl/MslConstants$ResponseCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1397
    :cond_0
    :goto_0
    return-object v1

    .line 1240
    :pswitch_0
    :try_start_0
    invoke-static {v0}, Lcom/netflix/msl/util/MslContext$ReauthCode;->valueOf(Lcom/netflix/msl/MslConstants$ResponseCode;)Lcom/netflix/msl/util/MslContext$ReauthCode;

    move-result-object v0

    .line 1241
    invoke-virtual {p1, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1249
    invoke-virtual {p4}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/netflix/msl/msg/MessageBuilder;->incrementMessageId(J)J

    move-result-wide v4

    .line 1250
    new-instance v6, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v6, v9, p2}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 1251
    invoke-interface {v6}, Lcom/netflix/msl/msg/MessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v2, v1

    .line 1252
    invoke-static/range {v0 .. v5}, Lcom/netflix/msl/msg/MessageBuilder;->createRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;J)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v0

    .line 1253
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1254
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 1255
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v2

    .line 1256
    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/msg/MessageBuilder;->setPeerAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    .line 1258
    :cond_1
    invoke-interface {v6}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    .line 1259
    new-instance v1, Lcom/netflix/msl/msg/MslControl$ErrorResult;

    invoke-direct {v1, v0, v6}, Lcom/netflix/msl/msg/MslControl$ErrorResult;-><init>(Lcom/netflix/msl/msg/MessageBuilder;Lcom/netflix/msl/msg/MessageContext;)V

    goto :goto_0

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported response code mapping onto entity re-authentication codes."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1267
    :pswitch_1
    :try_start_1
    invoke-static {v0}, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->valueOf(Lcom/netflix/msl/MslConstants$ResponseCode;)Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    move-result-object v0

    .line 1268
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p2, v0, v2, v3}, Lcom/netflix/msl/msg/MessageContext;->getUserAuthData(Lcom/netflix/msl/msg/MessageContext$ReauthCode;ZZ)Lcom/netflix/msl/userauth/UserAuthenticationData;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1280
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->getNewestMasterToken(Lcom/netflix/msl/util/MslContext;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    .line 1284
    invoke-virtual {p4}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->incrementMessageId(J)J

    move-result-wide v6

    .line 1285
    new-instance v0, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v0, v9, p2}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 1286
    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v4, v1

    .line 1287
    invoke-static/range {v2 .. v7}, Lcom/netflix/msl/msg/MessageBuilder;->createRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;J)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v2

    .line 1288
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1289
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 1290
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v3

    .line 1291
    invoke-virtual {v2, v1, v3}, Lcom/netflix/msl/msg/MessageBuilder;->setPeerAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    .line 1293
    :cond_2
    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/netflix/msl/msg/MessageBuilder;->setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    .line 1294
    new-instance v1, Lcom/netflix/msl/msg/MslControl$ErrorResult;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/msg/MslControl$ErrorResult;-><init>(Lcom/netflix/msl/msg/MessageBuilder;Lcom/netflix/msl/msg/MessageContext;)V

    goto/16 :goto_0

    .line 1270
    :catch_1
    move-exception v0

    .line 1271
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported response code mapping onto user re-authentication codes."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1301
    :pswitch_3
    invoke-virtual {p4}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/netflix/msl/msg/MessageBuilder;->incrementMessageId(J)J

    move-result-wide v4

    .line 1302
    new-instance v6, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v6, v9, p2}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 1303
    invoke-interface {v6}, Lcom/netflix/msl/msg/MessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v2, v1

    .line 1304
    invoke-static/range {v0 .. v5}, Lcom/netflix/msl/msg/MessageBuilder;->createRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;J)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v0

    .line 1305
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1306
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 1307
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v2

    .line 1308
    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/msg/MessageBuilder;->setPeerAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    .line 1314
    :cond_3
    invoke-virtual {v0, v10}, Lcom/netflix/msl/msg/MessageBuilder;->setRenewable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    .line 1315
    invoke-interface {v6}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    .line 1316
    new-instance v1, Lcom/netflix/msl/msg/MslControl$ErrorResult;

    invoke-direct {v1, v0, v6}, Lcom/netflix/msl/msg/MslControl$ErrorResult;-><init>(Lcom/netflix/msl/msg/MessageBuilder;Lcom/netflix/msl/msg/MessageContext;)V

    goto/16 :goto_0

    .line 1321
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->getNewestMasterToken(Lcom/netflix/msl/util/MslContext;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v6

    .line 1323
    if-eqz v6, :cond_9

    .line 1327
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1328
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v2

    .line 1329
    if-eqz v0, :cond_8

    invoke-interface {v2, v0}, Lcom/netflix/msl/util/MslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    .line 1330
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, v6}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v1, v0

    :cond_4
    move-object v2, v1

    .line 1336
    :goto_2
    invoke-virtual {p4}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->incrementMessageId(J)J

    move-result-wide v4

    .line 1337
    new-instance v7, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v7, v9, p2}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 1338
    invoke-interface {v7}, Lcom/netflix/msl/msg/MessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v1, v6

    .line 1339
    invoke-static/range {v0 .. v5}, Lcom/netflix/msl/msg/MessageBuilder;->createRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;J)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v0

    .line 1340
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1341
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 1342
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v2

    .line 1343
    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/msg/MessageBuilder;->setPeerAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    .line 1352
    :cond_5
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 1353
    if-eqz v1, :cond_6

    invoke-virtual {v1, v6}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1354
    :cond_6
    invoke-virtual {v0, v10}, Lcom/netflix/msl/msg/MessageBuilder;->setRenewable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    .line 1355
    :cond_7
    invoke-interface {v7}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    .line 1356
    new-instance v1, Lcom/netflix/msl/msg/MslControl$ErrorResult;

    invoke-direct {v1, v0, v7}, Lcom/netflix/msl/msg/MslControl$ErrorResult;-><init>(Lcom/netflix/msl/msg/MessageBuilder;Lcom/netflix/msl/msg/MessageContext;)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    .line 1329
    goto :goto_1

    :cond_9
    move-object v2, v1

    .line 1332
    goto :goto_2

    .line 1365
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->getNewestMasterToken(Lcom/netflix/msl/util/MslContext;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v6

    .line 1367
    if-eqz v6, :cond_d

    .line 1371
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1372
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v2

    .line 1373
    if-eqz v0, :cond_c

    invoke-interface {v2, v0}, Lcom/netflix/msl/util/MslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    .line 1374
    :goto_3
    if-eqz v0, :cond_a

    invoke-virtual {v0, v6}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v1, v0

    :cond_a
    move-object v2, v1

    .line 1380
    :goto_4
    invoke-virtual {p4}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->incrementMessageId(J)J

    move-result-wide v4

    .line 1381
    new-instance v7, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v7, v9, p2}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 1382
    invoke-interface {v7}, Lcom/netflix/msl/msg/MessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v1, v6

    .line 1383
    invoke-static/range {v0 .. v5}, Lcom/netflix/msl/msg/MessageBuilder;->createRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;J)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v0

    .line 1384
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1385
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 1386
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v2

    .line 1387
    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/msg/MessageBuilder;->setPeerAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    .line 1392
    :cond_b
    invoke-interface {v7}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    .line 1393
    new-instance v1, Lcom/netflix/msl/msg/MslControl$ErrorResult;

    invoke-direct {v1, v0, v7}, Lcom/netflix/msl/msg/MslControl$ErrorResult;-><init>(Lcom/netflix/msl/msg/MessageBuilder;Lcom/netflix/msl/msg/MessageContext;)V

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    .line 1373
    goto :goto_3

    :cond_d
    move-object v2, v1

    .line 1376
    goto :goto_4

    .line 1232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private buildRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1079
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    .line 1082
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->getNewestMasterToken(Lcom/netflix/msl/util/MslContext;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 1084
    if-eqz v2, :cond_2

    .line 1088
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 1089
    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Lcom/netflix/msl/util/MslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    .line 1090
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1096
    :goto_1
    :try_start_0
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v1

    .line 1097
    invoke-static {p1, v2, v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->createRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v0

    .line 1098
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1099
    return-object v0

    :cond_0
    move-object v0, v1

    .line 1089
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1090
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 1092
    goto :goto_1

    .line 1100
    :catch_0
    move-exception v0

    .line 1102
    invoke-direct {p0, p1, v2}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 1103
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "User ID token not bound to master token despite internal check."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1104
    :catch_1
    move-exception v0

    .line 1106
    invoke-direct {p0, p1, v2}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 1107
    throw v0
.end method

.method private buildResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1148
    invoke-static {p1, p3}, Lcom/netflix/msl/msg/MessageBuilder;->createResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v2

    .line 1149
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/netflix/msl/msg/MessageBuilder;->setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    .line 1157
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/netflix/msl/msg/MessageHeader;->getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 1186
    :goto_0
    return-object v0

    .line 1170
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->getNewestMasterToken(Lcom/netflix/msl/util/MslContext;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    .line 1172
    if-eqz v3, :cond_3

    .line 1176
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1177
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v4

    .line 1178
    if-eqz v0, :cond_1

    invoke-interface {v4, v0}, Lcom/netflix/msl/util/MslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    .line 1179
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1185
    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/netflix/msl/msg/MessageBuilder;->setAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    move-object v0, v2

    .line 1186
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1178
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 1179
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 1181
    goto :goto_2
.end method

.method protected static cancelled(Ljava/lang/Throwable;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 744
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 756
    :cond_0
    :goto_0
    return v0

    .line 754
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 746
    :cond_2
    if-eqz p0, :cond_4

    .line 747
    instance-of v1, p0, Ljava/lang/InterruptedException;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_3

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_0

    :cond_3
    instance-of v1, p0, Ljava/nio/channels/FileLockInterruptionException;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/nio/channels/ClosedByInterruptException;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 756
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/msg/ErrorHeader;)V
    .locals 2

    .prologue
    .line 1417
    sget-object v0, Lcom/netflix/msl/msg/MslControl$1;->$SwitchMap$com$netflix$msl$MslConstants$ResponseCode:[I

    invoke-virtual {p3}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorCode()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/MslConstants$ResponseCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1449
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1423
    :pswitch_1
    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/msg/MslControl;->deleteMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto :goto_0

    .line 1437
    :pswitch_2
    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    .line 1438
    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v1

    .line 1439
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1440
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    .line 1441
    invoke-interface {v0, v1}, Lcom/netflix/msl/util/MslStore;->removeUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)V

    goto :goto_0

    .line 1417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private deleteMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 4

    .prologue
    .line 919
    if-nez p2, :cond_0

    .line 952
    :goto_0
    return-void

    .line 926
    :cond_0
    new-instance v2, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;

    invoke-direct {v2, p1, p2}, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 927
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 928
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReadWriteLock;

    .line 935
    if-eqz v0, :cond_1

    .line 936
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 937
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 941
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 943
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/netflix/msl/util/MslStore;->removeCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 939
    :cond_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    goto :goto_1

    .line 949
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl;->masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private static getIdentity(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    .line 770
    if-nez v0, :cond_0

    .line 771
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "This method should not be called with an error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 774
    if-eqz v1, :cond_1

    .line 775
    invoke-virtual {v1}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v0

    .line 777
    :goto_0
    return-object v0

    .line 776
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNewestMasterToken(Lcom/netflix/msl/util/MslContext;)Lcom/netflix/msl/tokens/MasterToken;
    .locals 5

    .prologue
    .line 879
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v3

    .line 880
    invoke-interface {v3}, Lcom/netflix/msl/util/MslStore;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 881
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 896
    :goto_1
    return-object v0

    .line 884
    :cond_0
    new-instance v4, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;

    invoke-direct {v4, p1, v2}, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 885
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 886
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReadWriteLock;

    .line 887
    if-eqz v0, :cond_1

    .line 888
    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 894
    invoke-interface {v3}, Lcom/netflix/msl/util/MslStore;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 895
    invoke-virtual {v2, v1}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    .line 896
    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 887
    goto :goto_2

    .line 901
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 902
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 903
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method private receive(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageInputStream;
    .locals 18

    .prologue
    .line 1673
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1674
    if-eqz p4, :cond_0

    .line 1675
    invoke-virtual/range {p4 .. p4}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1676
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/netflix/msl/msg/MessageContext;->getCryptoContexts()Ljava/util/Map;

    move-result-object v5

    .line 1677
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/msl/msg/MslControl;->filterFactory:Lcom/netflix/msl/msg/FilterStreamFactory;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/msl/msg/MslControl;->filterFactory:Lcom/netflix/msl/msg/FilterStreamFactory;

    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Lcom/netflix/msl/msg/FilterStreamFactory;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p3

    .line 1678
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/msl/msg/MslControl;->streamFactory:Lcom/netflix/msl/msg/MessageStreamFactory;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v6, v0, v1, v4, v5}, Lcom/netflix/msl/msg/MessageStreamFactory;->createInputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/InputStream;Ljava/util/Set;Ljava/util/Map;)Lcom/netflix/msl/msg/MessageInputStream;

    move-result-object v14

    .line 1681
    invoke-virtual {v14}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v5

    .line 1682
    invoke-virtual {v14}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v6

    .line 1683
    invoke-interface/range {p2 .. p2}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v7

    .line 1684
    if-eqz v7, :cond_2

    if-eqz v5, :cond_4

    move-object v4, v5

    :goto_0
    invoke-interface {v7, v4}, Lcom/netflix/msl/msg/MessageDebugContext;->receivedHeader(Lcom/netflix/msl/msg/Header;)V

    .line 1693
    :cond_2
    if-eqz v5, :cond_5

    .line 1694
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v9

    .line 1695
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v8

    .line 1696
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v7

    .line 1697
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v4

    move-object v10, v4

    move-object v11, v7

    move-object v12, v8

    move-object v13, v9

    .line 1708
    :goto_1
    if-eqz p4, :cond_8

    .line 1713
    if-eqz v6, :cond_6

    :try_start_0
    invoke-virtual {v6}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorCode()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v4

    .line 1714
    :goto_2
    if-nez v5, :cond_3

    sget-object v7, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-eq v4, v7, :cond_8

    sget-object v7, Lcom/netflix/msl/MslConstants$ResponseCode;->TRANSIENT_FAILURE:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-eq v4, v7, :cond_8

    sget-object v7, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-eq v4, v7, :cond_8

    sget-object v7, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-eq v4, v7, :cond_8

    .line 1717
    :cond_3
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v8

    .line 1718
    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/netflix/msl/msg/MessageBuilder;->incrementMessageId(J)J

    move-result-wide v16

    .line 1719
    cmp-long v4, v8, v16

    if-eqz v4, :cond_8

    .line 1720
    new-instance v4, Lcom/netflix/msl/MslMessageException;

    sget-object v5, Lcom/netflix/msl/MslError;->UNEXPECTED_RESPONSE_MESSAGE_ID:Lcom/netflix/msl/MslError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    :catch_0
    move-exception v4

    .line 1785
    invoke-virtual {v4, v13}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    .line 1786
    invoke-virtual {v4, v12}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 1787
    invoke-virtual {v4, v11}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 1788
    invoke-virtual {v4, v10}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 1789
    throw v4

    :cond_4
    move-object v4, v6

    .line 1684
    goto :goto_0

    .line 1699
    :cond_5
    const/4 v9, 0x0

    .line 1700
    invoke-virtual {v6}, Lcom/netflix/msl/msg/ErrorHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v8

    .line 1701
    const/4 v7, 0x0

    .line 1702
    const/4 v4, 0x0

    move-object v10, v4

    move-object v11, v7

    move-object v12, v8

    move-object v13, v9

    goto :goto_1

    .line 1713
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 1717
    :cond_7
    :try_start_1
    invoke-virtual {v6}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v8

    goto :goto_3

    .line 1725
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v7

    .line 1726
    if-eqz v5, :cond_15

    .line 1731
    if-eqz v13, :cond_9

    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getSender()Ljava/lang/String;

    move-result-object v4

    .line 1732
    :goto_4
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Lcom/netflix/msl/tokens/MasterToken;->isDecrypted()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v13}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1733
    new-instance v5, Lcom/netflix/msl/MslMessageException;

    sget-object v6, Lcom/netflix/msl/MslError;->UNEXPECTED_MESSAGE_SENDER:Lcom/netflix/msl/MslError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sender "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "; master token "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v5

    .line 1731
    :cond_9
    invoke-virtual {v12}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 1734
    :cond_a
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1735
    new-instance v5, Lcom/netflix/msl/MslMessageException;

    sget-object v6, Lcom/netflix/msl/MslError;->UNEXPECTED_LOCAL_MESSAGE_SENDER:Lcom/netflix/msl/MslError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " == "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v5

    .line 1739
    :cond_b
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getRecipient()Ljava/lang/String;

    move-result-object v4

    .line 1740
    if-eqz v4, :cond_c

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 1741
    new-instance v5, Lcom/netflix/msl/MslMessageException;

    sget-object v6, Lcom/netflix/msl/MslError;->MESSAGE_RECIPIENT_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " != "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v5

    .line 1744
    :cond_c
    if-eqz p4, :cond_d

    .line 1745
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v14}, Lcom/netflix/msl/msg/MslControl;->updateCryptoContexts(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/msg/MessageInputStream;)V

    .line 1750
    :cond_d
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v4

    .line 1754
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v7

    if-nez v7, :cond_13

    .line 1755
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v8

    .line 1756
    :goto_5
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v7

    .line 1757
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getServiceTokens()Ljava/util/Set;

    move-result-object v4

    .line 1766
    :goto_6
    invoke-interface/range {p2 .. p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v9

    .line 1767
    if-eqz v9, :cond_e

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lcom/netflix/msl/tokens/UserIdToken;->isVerified()Z

    move-result v15

    if-nez v15, :cond_e

    .line 1768
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v15

    invoke-interface {v15, v9, v7}, Lcom/netflix/msl/util/MslStore;->addUserIdToken(Ljava/lang/String;Lcom/netflix/msl/tokens/UserIdToken;)V

    .line 1771
    :cond_e
    move-object/from16 v0, p1

    invoke-static {v0, v8, v7, v4}, Lcom/netflix/msl/msg/MslControl;->storeServiceTokens(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;)V

    .line 1781
    :cond_f
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    .line 1782
    :goto_7
    if-eqz v4, :cond_11

    if-nez p4, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1783
    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/netflix/msl/util/MslContext;->updateRemoteTime(Ljava/util/Date;)V

    .line 1793
    :cond_11
    return-object v14

    .line 1755
    :cond_12
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v8

    goto :goto_5

    .line 1759
    :cond_13
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v8

    .line 1760
    :goto_8
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v7

    .line 1761
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getPeerServiceTokens()Ljava/util/Set;

    move-result-object v4

    goto :goto_6

    .line 1759
    :cond_14
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v8

    goto :goto_8

    .line 1774
    :cond_15
    invoke-virtual {v6}, Lcom/netflix/msl/msg/ErrorHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v4

    .line 1775
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1776
    new-instance v5, Lcom/netflix/msl/MslMessageException;

    sget-object v6, Lcom/netflix/msl/MslError;->UNEXPECTED_MESSAGE_SENDER:Lcom/netflix/msl/MslError;

    invoke-direct {v5, v6, v4}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v5

    .line 1781
    :cond_16
    invoke-virtual {v6}, Lcom/netflix/msl/msg/ErrorHeader;->getTimestamp()Ljava/util/Date;
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_7
.end method

.method private releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 2

    .prologue
    .line 963
    if-eqz p2, :cond_0

    .line 964
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;

    invoke-direct {v0, p1, p2}, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 965
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReadWriteLock;

    .line 968
    if-eqz v0, :cond_0

    .line 969
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 971
    :cond_0
    return-void
.end method

.method private releaseRenewalLock(Lcom/netflix/msl/util/MslContext;Ljava/util/concurrent/BlockingQueue;Lcom/netflix/msl/msg/MessageInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/netflix/msl/tokens/MasterToken;",
            ">;",
            "Lcom/netflix/msl/msg/MessageInputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 2140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempt to release renewal lock that is not owned by this queue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2144
    :cond_0
    if-nez p3, :cond_1

    .line 2145
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->NULL_MASTER_TOKEN:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 2146
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2188
    :goto_0
    return-void

    .line 2152
    :cond_1
    invoke-virtual {p3}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    .line 2153
    if-nez v0, :cond_2

    .line 2154
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->NULL_MASTER_TOKEN:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 2155
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2161
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v1

    .line 2162
    if-eqz v1, :cond_3

    .line 2163
    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 2187
    :goto_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2168
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2169
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    .line 2170
    if-eqz v0, :cond_4

    .line 2171
    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2173
    :cond_4
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->NULL_MASTER_TOKEN:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2179
    :cond_5
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    .line 2180
    if-eqz v0, :cond_6

    .line 2181
    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2183
    :cond_6
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->NULL_MASTER_TOKEN:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private send(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1515
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    .line 1516
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v4

    .line 1517
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v5

    .line 1521
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1522
    if-eqz v0, :cond_11

    .line 1525
    if-nez v4, :cond_7

    move v0, v1

    .line 1526
    :goto_0
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->isRenewable()Z

    move-result v6

    invoke-interface {p2, v7, v6, v0}, Lcom/netflix/msl/msg/MessageContext;->getUserAuthData(Lcom/netflix/msl/msg/MessageContext$ReauthCode;ZZ)Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v0

    .line 1527
    if-eqz v0, :cond_11

    .line 1530
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willEncryptHeader()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willIntegrityProtectHeader()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1531
    invoke-virtual {p4, v0}, Lcom/netflix/msl/msg/MessageBuilder;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/msg/MessageBuilder;

    move v0, v2

    .line 1548
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v4, :cond_1

    .line 1549
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    .line 1551
    :cond_1
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v5

    .line 1552
    if-eqz v5, :cond_2

    .line 1553
    invoke-virtual {p4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->setUser(Lcom/netflix/msl/tokens/MslUser;)V

    .line 1557
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v4

    .line 1568
    :cond_2
    if-nez v0, :cond_9

    .line 1569
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willEncryptPayloads()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1570
    :cond_3
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isIntegrityProtected()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willIntegrityProtectPayloads()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1571
    :cond_4
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->isNonReplayable()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    :cond_5
    move v0, v1

    .line 1572
    :goto_2
    if-nez v0, :cond_a

    .line 1575
    :goto_3
    invoke-virtual {p4, v1}, Lcom/netflix/msl/msg/MessageBuilder;->setHandshake(Z)Lcom/netflix/msl/msg/MessageBuilder;

    .line 1578
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1579
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->isRenewable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1583
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRemoteTime()Ljava/util/Date;

    move-result-object v2

    .line 1584
    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Lcom/netflix/msl/tokens/MasterToken;->isRenewable(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1585
    :cond_6
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getKeyRequestData()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1586
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/keyx/KeyRequestData;

    .line 1587
    invoke-virtual {p4, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addKeyRequestData(Lcom/netflix/msl/keyx/KeyRequestData;)Lcom/netflix/msl/msg/MessageBuilder;

    goto :goto_4

    :cond_7
    move v0, v2

    .line 1525
    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 1538
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 1571
    goto :goto_2

    :cond_a
    move v1, v2

    .line 1572
    goto :goto_3

    .line 1593
    :cond_b
    new-instance v0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;

    invoke-direct {v0, p1, p2, p4}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;)V

    .line 1594
    invoke-interface {p2, v0, v1}, Lcom/netflix/msl/msg/MessageContext;->updateServiceTokens(Lcom/netflix/msl/msg/MessageServiceTokenBuilder;Z)V

    .line 1595
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v2

    .line 1598
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v0

    .line 1599
    if-eqz v0, :cond_c

    invoke-interface {v0, v2}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    .line 1604
    :cond_c
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getKeyExchangeData()Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    move-result-object v5

    .line 1605
    invoke-direct {p0, p1, v2, v5}, Lcom/netflix/msl/msg/MslControl;->updateCryptoContexts(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;)V

    .line 1608
    if-eqz v5, :cond_f

    iget-object v0, v5, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    .line 1609
    :goto_5
    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageHeader;->getServiceTokens()Ljava/util/Set;

    move-result-object v3

    .line 1610
    invoke-static {p1, v0, v4, v3}, Lcom/netflix/msl/msg/MslControl;->storeServiceTokens(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;)V

    .line 1616
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz v5, :cond_10

    .line 1617
    iget-object v0, v5, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 1622
    :goto_6
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl;->filterFactory:Lcom/netflix/msl/msg/FilterStreamFactory;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl;->filterFactory:Lcom/netflix/msl/msg/FilterStreamFactory;

    invoke-interface {v3, p3}, Lcom/netflix/msl/msg/FilterStreamFactory;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p3

    .line 1623
    :cond_d
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl;->streamFactory:Lcom/netflix/msl/msg/MessageStreamFactory;

    invoke-virtual {v3, p1, p3, v2, v0}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/crypto/ICryptoContext;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v0

    .line 1624
    invoke-virtual {v0, p5}, Lcom/netflix/msl/msg/MessageOutputStream;->closeDestination(Z)V

    .line 1629
    if-nez v1, :cond_e

    .line 1630
    invoke-interface {p2, v0}, Lcom/netflix/msl/msg/MessageContext;->write(Lcom/netflix/msl/msg/MessageOutputStream;)V

    .line 1633
    :cond_e
    new-instance v2, Lcom/netflix/msl/msg/MslControl$SendResult;

    invoke-direct {v2, v0, v1, v7}, Lcom/netflix/msl/msg/MslControl$SendResult;-><init>(Lcom/netflix/msl/msg/MessageOutputStream;ZLcom/netflix/msl/msg/MslControl$1;)V

    return-object v2

    :cond_f
    move-object v0, v3

    .line 1608
    goto :goto_5

    .line 1619
    :cond_10
    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageHeader;->getCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    goto :goto_6

    :cond_11
    move v0, v2

    goto/16 :goto_1
.end method

.method private sendError(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 2214
    invoke-static {p1, p4, p5, p6, p7}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    .line 2215
    if-eqz p2, :cond_0

    invoke-interface {p2, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    .line 2218
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v2

    .line 2219
    if-eqz p3, :cond_1

    .line 2220
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v0

    invoke-virtual {p3}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/msl/msg/MessageCapabilities;->intersection(Lcom/netflix/msl/msg/MessageCapabilities;Lcom/netflix/msl/msg/MessageCapabilities;)Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v0

    .line 2222
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageCapabilities;->getEncoderFormats()Ljava/util/Set;

    move-result-object v0

    .line 2223
    :goto_1
    invoke-virtual {v2, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->getPreferredFormat(Ljava/util/Set;)Lcom/netflix/msl/io/MslEncoderFormat;

    move-result-object v0

    .line 2226
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl;->streamFactory:Lcom/netflix/msl/msg/MessageStreamFactory;

    invoke-virtual {v2, p1, p8, v1, v0}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/ErrorHeader;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v0

    .line 2227
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V

    .line 2228
    return-void

    .line 2221
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v0

    goto :goto_0

    .line 2222
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private sendReceive(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;ZZI)Lcom/netflix/msl/msg/MslControl$SendReceiveResult;
    .locals 13

    .prologue
    .line 1872
    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v6, v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 1875
    move/from16 v0, p8

    int-to-long v8, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p5

    :try_start_0
    invoke-direct/range {v3 .. v9}, Lcom/netflix/msl/msg/MslControl;->acquireRenewalLock(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/util/concurrent/BlockingQueue;Lcom/netflix/msl/msg/MessageBuilder;J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 1890
    const/4 v3, 0x0

    .line 1893
    :try_start_1
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/netflix/msl/msg/MessageBuilder;->setRenewable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    .line 1894
    invoke-direct/range {v7 .. v12}, Lcom/netflix/msl/msg/MslControl;->send(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;

    move-result-object v5

    .line 1899
    iget-object v2, v5, Lcom/netflix/msl/msg/MslControl$SendResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageOutputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v2

    .line 1900
    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v7

    .line 1901
    if-nez p6, :cond_0

    iget-boolean v8, v5, Lcom/netflix/msl/msg/MslControl$SendResult;->handshake:Z

    if-nez v8, :cond_0

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1902
    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageHeader;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1904
    :cond_0
    move-object/from16 v0, p3

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/netflix/msl/msg/MslControl;->receive(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageInputStream;

    move-result-object v3

    .line 1905
    move/from16 v0, p7

    invoke-virtual {v3, v0}, Lcom/netflix/msl/msg/MessageInputStream;->closeSource(Z)V

    .line 1908
    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v7

    .line 1909
    if-eqz v7, :cond_1

    .line 1910
    invoke-direct {p0, p1, v2, v7}, Lcom/netflix/msl/msg/MslControl;->cleanupContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/msg/ErrorHeader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1914
    :cond_1
    if-eqz v4, :cond_2

    .line 1915
    invoke-direct {p0, p1, v6, v3}, Lcom/netflix/msl/msg/MslControl;->releaseRenewalLock(Lcom/netflix/msl/util/MslContext;Ljava/util/concurrent/BlockingQueue;Lcom/netflix/msl/msg/MessageInputStream;)V

    .line 1918
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 1922
    new-instance v2, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;

    invoke-direct {v2, v3, v5}, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MslControl$SendResult;)V

    :goto_0
    return-object v2

    .line 1876
    :catch_0
    move-exception v2

    .line 1878
    invoke-virtual/range {p5 .. p5}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 1881
    const/4 v2, 0x0

    goto :goto_0

    .line 1882
    :catch_1
    move-exception v2

    .line 1884
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 1885
    throw v2

    .line 1914
    :catchall_0
    move-exception v2

    if-eqz v4, :cond_3

    .line 1915
    invoke-direct {p0, p1, v6, v3}, Lcom/netflix/msl/msg/MslControl;->releaseRenewalLock(Lcom/netflix/msl/util/MslContext;Ljava/util/concurrent/BlockingQueue;Lcom/netflix/msl/msg/MessageInputStream;)V

    .line 1918
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v2

    .line 1882
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private static storeServiceTokens(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "Lcom/netflix/msl/tokens/UserIdToken;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1044
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v3

    .line 1045
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1046
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 1049
    invoke-virtual {v0, p1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1051
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getData()[B

    move-result-object v1

    .line 1052
    if-eqz v1, :cond_4

    array-length v1, v1

    if-nez v1, :cond_4

    .line 1053
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    :goto_1
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p2

    :goto_2
    invoke-interface {v3, v6, v1, v0}, Lcom/netflix/msl/util/MslStore;->removeServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_2

    .line 1055
    :cond_4
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1057
    :cond_5
    invoke-interface {v3, v4}, Lcom/netflix/msl/util/MslStore;->addServiceTokens(Ljava/util/Set;)V

    .line 1058
    return-void
.end method

.method private updateCryptoContexts(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;)V
    .locals 3

    .prologue
    .line 987
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    .line 988
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 989
    iget-object v1, p3, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    .line 990
    iget-object v2, p3, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 991
    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    .line 992
    invoke-interface {v0, v1, v2}, Lcom/netflix/msl/util/MslStore;->setCryptoContext(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 996
    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/msg/MslControl;->deleteMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 998
    :cond_0
    return-void
.end method

.method private updateCryptoContexts(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/msg/MessageInputStream;)V
    .locals 3

    .prologue
    .line 1012
    invoke-virtual {p3}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    .line 1013
    if-nez v0, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v1

    .line 1018
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v0

    .line 1019
    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    .line 1021
    invoke-virtual {p3}, Lcom/netflix/msl/msg/MessageInputStream;->getKeyExchangeCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/msl/util/MslStore;->setCryptoContext(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 1025
    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/msg/MslControl;->deleteMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto :goto_0
.end method


# virtual methods
.method public error(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$ApplicationError;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageInputStream;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageContext;",
            "Lcom/netflix/msl/msg/MslControl$ApplicationError;",
            "Ljava/io/OutputStream;",
            "Lcom/netflix/msl/msg/MessageInputStream;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3657
    invoke-virtual {p5}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3658
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Request message input stream cannot be for an error message."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3659
    :cond_0
    new-instance v0, Lcom/netflix/msl/msg/MslControl$ErrorService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/msl/msg/MslControl$ErrorService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$ApplicationError;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageInputStream;)V

    .line 3660
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 858
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 859
    return-void
.end method

.method public receive(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;I)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageContext;",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/netflix/msl/msg/MessageInputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3564
    new-instance v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/msl/msg/MslControl$ReceiveService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3565
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public request(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;I)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageContext;",
            "Lcom/netflix/msl/io/Url;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/netflix/msl/msg/MslControl$MslChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3700
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3701
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This method cannot be used in peer-to-peer mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3702
    :cond_0
    new-instance v0, Lcom/netflix/msl/msg/MslControl$RequestService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/msg/MslControl$RequestService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;I)V

    .line 3703
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public request(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;I)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageContext;",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/netflix/msl/msg/MslControl$MslChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3750
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3751
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This method cannot be used in trusted network mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3752
    :cond_0
    new-instance v0, Lcom/netflix/msl/msg/MslControl$RequestService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/msl/msg/MslControl$RequestService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3753
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public respond(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageInputStream;I)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageContext;",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "Lcom/netflix/msl/msg/MessageInputStream;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/netflix/msl/msg/MslControl$MslChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3622
    invoke-virtual {p5}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Request message input stream cannot be for an error message."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3624
    :cond_0
    new-instance v0, Lcom/netflix/msl/msg/MslControl$RespondService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/netflix/msl/msg/MslControl$RespondService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageInputStream;I)V

    .line 3625
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setFilterFactory(Lcom/netflix/msl/msg/FilterStreamFactory;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl;->filterFactory:Lcom/netflix/msl/msg/FilterStreamFactory;

    .line 842
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 850
    return-void
.end method
