.class public Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
.super Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;
.source "SessionMdxTarget.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionMdxTarget"


# instance fields
.field private forceSelect:Z

.field private mActiveSessionId:I

.field private mCapbilities:Lorg/json/JSONObject;

.field private mControllerUserid:Ljava/lang/String;

.field private mExpectTargetRestartDeadlineMs:J

.field private mMslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

.field private mNetflixSecurityScheme:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

.field private mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

.field private mPairingScheme:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

.field private mPendingCommand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

.field private final mRecentMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mSessionMdxStack:Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;

.field private mSharedSecret:[B

.field private mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

.field private mTargetUserid:Ljava/lang/String;

.field private final mTransportType:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

.field private supportXprofile:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mRecentMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    iput v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mActiveSessionId:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPendingCommand:Ljava/util/List;

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mExpectTargetRestartDeadlineMs:J

    .line 101
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mSessionMdxStack:Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;

    .line 102
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mSessionMdxStack:Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    .line 103
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    invoke-direct {v0, p6, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;-><init>(Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    .line 104
    iput-object p5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    .line 105
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->CAST:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mTransportType:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    .line 106
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->MSL:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mNetflixSecurityScheme:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    .line 107
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->REGPAIR_V2:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPairingScheme:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    .line 108
    iput-object p6, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    .line 109
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "SessionMdxTarget %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    return-void
.end method

.method public constructor <init>(ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V
    .locals 4

    .prologue
    .line 114
    invoke-direct {p0, p4, p5, p6, p10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mRecentMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mActiveSessionId:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPendingCommand:Ljava/util/List;

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mExpectTargetRestartDeadlineMs:J

    .line 115
    iput-object p7, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mSessionMdxStack:Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;

    .line 116
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mSessionMdxStack:Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    .line 117
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    invoke-direct {v0, p9, p4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;-><init>(Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    .line 118
    iput-object p8, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    .line 119
    if-eqz p2, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->WEBSOCKET:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mTransportType:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    .line 120
    if-eqz p1, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->NTBA:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    :goto_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mNetflixSecurityScheme:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    .line 121
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 122
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->REGPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPairingScheme:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    .line 129
    :goto_2
    iput-object p9, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    .line 130
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "SessionMdxTarget %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 131
    return-void

    .line 119
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->HTTP:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    goto :goto_0

    .line 120
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->MSL:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    goto :goto_1

    .line 123
    :cond_2
    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    .line 124
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->REGPAIR_V2:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPairingScheme:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    .line 125
    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->supportXprofile:Z

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 127
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->PAIRING:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPairingScheme:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    goto :goto_2
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->forceSelect:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPendingCommand:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->resetState()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mCapbilities:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    return-object v0
.end method

.method private deletePair()V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mSharedSecret:[B

    .line 466
    return-void
.end method

.method private getControllerurlPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getTransportType()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->CAST:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const-string/jumbo v0, "cast://"

    .line 412
    :goto_0
    return-object v0

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getTransportType()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->WEBSOCKET:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    const-string/jumbo v0, "ws://"

    goto :goto_0

    .line 410
    :cond_1
    const-string/jumbo v0, "http://"

    goto :goto_0
.end method

.method private getCticketFromMslTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 422
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->toBase64String(Lcom/netflix/msl/io/MslEncodable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->toBase64String(Lcom/netflix/msl/io/MslEncodable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    return-object v0
.end method

.method private getPairScheme()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPairingScheme:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    return-object v0
.end method

.method private getRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getControllerurlPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":9080/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSecurityScheme()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mNetflixSecurityScheme:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    return-object v0
.end method

.method private getSessionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->hasPair()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "device has no pair, cannot send session message %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 439
    const/4 v0, 0x0

    .line 450
    :goto_0
    return-object v0

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getControllerurlPrefix()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mControllerUserid:Ljava/lang/String;

    .line 444
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mTargetUserid:Ljava/lang/String;

    .line 446
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getXid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mSharedSecret:[B

    move-object v5, p1

    .line 441
    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils;->buildMdxSessionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTransportType()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mTransportType:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$MsgTransportType;

    return-object v0
.end method

.method private getXid()J
    .locals 2

    .prologue
    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private resetState()V
    .locals 2

    .prologue
    .line 468
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "resetState"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->deletePair()V

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->forceSelect:Z

    .line 471
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPendingCommand:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 472
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->reset()V

    .line 473
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->reset()V

    .line 474
    return-void
.end method

.method private sendMessageMdxTarget(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 453
    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mActiveSessionId:I

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->getMessageString(I)Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getSessionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 455
    const-string/jumbo v4, "SessionMdxTarget"

    const-string/jumbo v5, "sendMessageMdxTarget %s"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 456
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mSessionMdxStack:Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;

    const-string/jumbo v2, "session"

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v2, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :goto_0
    return v0

    .line 459
    :cond_0
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v2, "sendMessageMdxTarget failed"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 460
    goto :goto_0
.end method

.method private setXprofileTimeout(J)V
    .locals 5

    .prologue
    .line 369
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "set cross-profile time %d ms."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->setRegPairTimeOut(J)V

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mExpectTargetRestartDeadlineMs:J

    .line 372
    return-void
.end method

.method private toBase64String(Lcom/netflix/msl/io/MslEncodable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->getMslEncoderFormat()Lcom/netflix/msl/io/MslEncoderFormat;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/netflix/msl/io/MslEncodable;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 430
    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method doHandShake()V
    .locals 2

    .prologue
    .line 532
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "doHandShake"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/Handshake;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/Handshake;-><init>()V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendMessageMdxTarget(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)Z

    .line 534
    return-void
.end method

.method doPair()V
    .locals 9

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->deletePair()V

    .line 487
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->getMslTokensAndCrypto()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;

    move-result-object v6

    .line 488
    if-nez v6, :cond_0

    .line 490
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "doPair has invalid MSL credention"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_0
    return-void

    .line 493
    :cond_0
    const/4 v0, 0x0

    .line 494
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getPairScheme()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->REGPAIR_V2:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 495
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getSecurityScheme()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->MSL:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 496
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getControllerurlPrefix()Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getXid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v6, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v7, v6, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 498
    invoke-direct {p0, v5, v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getCticketFromMslTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v6, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    .line 499
    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v7

    iget-object v8, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v8}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->getMslEncoderFormat()Lcom/netflix/msl/io/MslEncoderFormat;

    move-result-object v8

    .line 493
    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils;->getPairingMessage(ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/msl/crypto/ICryptoContext;Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Ljava/lang/String;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mSessionMdxStack:Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;

    const-string/jumbo v2, "pairingrequest"

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method doRegpair()V
    .locals 9

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->deletePair()V

    .line 504
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->getMslTokensAndCrypto()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;

    move-result-object v6

    .line 505
    if-nez v6, :cond_1

    .line 508
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "doRegpair has invalid MSL credention"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    const/4 v0, 0x1

    .line 512
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getPairScheme()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->REGPAIR_V2:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 513
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getSecurityScheme()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->MSL:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 514
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getControllerurlPrefix()Ljava/lang/String;

    move-result-object v3

    .line 515
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getXid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v6, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v7, v6, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 516
    invoke-direct {p0, v5, v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getCticketFromMslTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v6, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    .line 517
    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v7

    iget-object v8, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v8}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->getMslEncoderFormat()Lcom/netflix/msl/io/MslEncoderFormat;

    move-result-object v8

    .line 511
    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils;->getPairingMessage(ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/msl/crypto/ICryptoContext;Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Ljava/lang/String;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mSessionMdxStack:Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;

    const-string/jumbo v2, "regpairrequest"

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->supportXprofile:Z

    if-eqz v0, :cond_0

    .line 520
    const-wide/16 v0, 0x7d00

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->setXprofileTimeout(J)V

    goto :goto_0
.end method

.method getCapability()V
    .locals 2

    .prologue
    .line 536
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "getCapability"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerGetCapabilities;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerGetCapabilities;-><init>()V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendMessageMdxTarget(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)Z

    .line 538
    return-void
.end method

.method public getCapbilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;
    .locals 2

    .prologue
    .line 381
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mCapbilities:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-object v0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "device capbility not cached"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 0

    .prologue
    .line 134
    return-object p0
.end method

.method getState()V
    .locals 2

    .prologue
    .line 540
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "getState"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerGetCurrentState;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerGetCurrentState;-><init>()V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendMessageMdxTarget(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)Z

    .line 542
    return-void
.end method

.method public getTargetPlaybackSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeOfMostRecentIncomingMessage()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mRecentMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    return-object v0
.end method

.method public handleBroadCastMessage(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 350
    const-string/jumbo v0, "messageType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    const-string/jumbo v1, "targetrestarting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->supportXprofile:Z

    if-eqz v0, :cond_0

    .line 352
    const-string/jumbo v0, "payload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_0

    .line 354
    const-string/jumbo v1, "duration"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 355
    const-wide/16 v2, 0x7d00

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 356
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->setXprofileTimeout(J)V

    .line 359
    :cond_0
    return-void
.end method

.method public handleIncomingErrorMessage(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 195
    const-string/jumbo v1, "errorcode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    const-string/jumbo v1, "SessionMdxTarget"

    const-string/jumbo v5, "handleIncomingErrorMessage %s %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v0

    const-string/jumbo v7, "errorstring"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1, v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 197
    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_1
    return-void

    .line 197
    :sswitch_0
    const-string/jumbo v2, "6"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "5"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "11"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "10"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "12"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "13"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageFailedBadPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->receiveTargetStateEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;)V

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_ERROR_BADPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onSessionMdxTargetError(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;)V

    goto :goto_1

    .line 204
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageFailedNeedNewSession:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->receiveTargetStateEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;)V

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_ERROR_BADSESSION:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onSessionMdxTargetError(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;)V

    goto :goto_1

    .line 210
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PairFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->receiveTargetStateEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;)V

    goto :goto_1

    .line 197
    :sswitch_data_0
    .sparse-switch
        0x35 -> :sswitch_1
        0x36 -> :sswitch_0
        0x61f -> :sswitch_3
        0x620 -> :sswitch_2
        0x621 -> :sswitch_4
        0x622 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public handleIncomingSessionMessage(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->hasPair()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "device has no pair, cannot handleIncomingSessionMessage"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mRecentMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mSharedSecret:[B

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils;->parseMdxSessionMessage(Lorg/json/JSONObject;[BLcom/netflix/mediaclient/service/mdx/NotifierInterface;Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    move-result-object v1

    .line 221
    if-nez v1, :cond_2

    .line 222
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "handleIncomingSessionMessage fail to parse"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getMessage()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 225
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v2, "has appMsg: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getMessage()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;->getAppBodyJson()Lorg/json/JSONObject;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 227
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$4;->$SwitchMap$com$netflix$mediaclient$service$mdx$protocol$target$TargetStateDef$SessionMessageType:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getType()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 229
    :pswitch_0
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getMessage()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/StartSessionResponse;

    .line 230
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/StartSessionResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 231
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/StartSessionResponse;->getSessionId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mActiveSessionId:I

    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->StartSessionSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->receiveTargetStateEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;)V

    .line 233
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "handleIncomingSessionMessage start session %d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mActiveSessionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 235
    :cond_4
    iput v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mActiveSessionId:I

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->StartSessionFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->receiveTargetStateEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;)V

    .line 237
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "handleIncomingSessionMessage start session failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 241
    :pswitch_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getMessage()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/HandshakeAccepted;

    .line 242
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/HandshakeAccepted;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->HandShakeSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->receiveTargetStateEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;)V

    .line 244
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "handleIncomingSessionMessage handshake accepted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 246
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->HandShakeFailed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->receiveTargetStateEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;)V

    .line 247
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "handleIncomingSessionMessage handshake failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 251
    :pswitch_2
    iput v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mActiveSessionId:I

    .line 253
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "handleIncomingSessionMessage session %d ended"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mActiveSessionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 256
    :pswitch_3
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getMessage()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;->getAppBodyJson()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mCapbilities:Lorg/json/JSONObject;

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mCapbilities:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->capability(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getType()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->receiveMessageEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;)V

    goto/16 :goto_0

    .line 261
    :pswitch_4
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getMessage()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerCurrentState;

    .line 262
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerCurrentState;->getPlayerState()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->updateState(Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;)V

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getType()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->receiveMessageEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;)V

    goto/16 :goto_0

    .line 266
    :pswitch_5
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getMessage()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerStateChanged;

    .line 267
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerStateChanged;->getPlayerState()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->changeState(Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerState;)V

    goto/16 :goto_0

    .line 271
    :pswitch_6
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getMessage()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;->getAppBodyJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 272
    const-string/jumbo v1, "audio_tracks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "timed_text_track"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->updateAudioSub(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :pswitch_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getMessage()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;->getAppBodyJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->dialogShow(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :pswitch_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getMessage()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;->getAppBodyJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->dialogCancel(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    :pswitch_9
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getMessage()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;->getAppBodyJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->metaData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :pswitch_a
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getMessage()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;->getAppBodyJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 289
    :try_start_0
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;-><init>(Lorg/json/JSONObject;)V

    .line 290
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->getVideoId()I

    move-result v3

    .line 292
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->getAncestorVideoId()I

    move-result v4

    .line 293
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->getAncestorVideoType()Ljava/lang/String;

    move-result-object v5

    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->requestPinVerification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "failed to parse MESSAGE_TYPE_PIN_VERIFICATION_SHOW"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 301
    :pswitch_b
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getMessage()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;->getAppBodyJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 303
    :try_start_1
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinNotRequired;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinNotRequired;-><init>(Lorg/json/JSONObject;)V

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinNotRequired;->getIsPinVerified()Z

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->abortPinVerification(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 305
    :catch_1
    move-exception v0

    .line 306
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "failed to parse MESSAGE_TYPE_PIN_VERIFICATION_NOT_REQUIRED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 311
    :pswitch_c
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageFailedBadPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->receiveTargetStateEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;)V

    .line 312
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getType()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onSessionMdxTargetError(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;)V

    goto/16 :goto_0

    .line 315
    :pswitch_d
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageFailedNeedNewSession:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->receiveTargetStateEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;)V

    .line 316
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->getType()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onSessionMdxTargetError(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;)V

    goto/16 :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public handlePairingResult(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 321
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->getMslTokensAndCrypto()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->epxectingPairingResult()Z

    move-result v1

    if-nez v1, :cond_3

    .line 325
    :cond_0
    const-string/jumbo v1, "SessionMdxTarget"

    const-string/jumbo v2, "won\'t process pairing result %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->epxectingPairingResult()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "not expecting."

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 343
    :cond_1
    :goto_1
    return-void

    .line 325
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 328
    :cond_3
    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    .line 329
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMslClient:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->getMslEncoderFormat()Lcom/netflix/msl/io/MslEncoderFormat;

    move-result-object v2

    .line 330
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getSecurityScheme()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->MSL:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 328
    invoke-static {p1, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils;->getPairingResult(Lorg/json/JSONObject;Lcom/netflix/msl/crypto/ICryptoContext;Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;Z)Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 334
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->getSharedSecret()[B

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mSharedSecret:[B

    .line 335
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->getControllerUserid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mControllerUserid:Ljava/lang/String;

    .line 336
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->getTargetUserid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mTargetUserid:Ljava/lang/String;

    .line 341
    :goto_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->getResultEvent()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->receiveTargetStateEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;)V

    goto :goto_1

    .line 338
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->getPairingFailedMessageForLogblob()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onPairingFailed(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->deletePair()V

    goto :goto_2
.end method

.method public handleSendMessageResult(Z)V
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->receiveTargetStateEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;)V

    .line 348
    return-void

    .line 345
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    goto :goto_0
.end method

.method public hasActivePlaybackSession()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPlayerStateManager:Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->hasActiveplayback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasCapability()Z
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method hasPair()Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mSharedSecret:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasPendingMessage()Z
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPendingCommand:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isForceSelect()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->forceSelect:Z

    return v0
.end method

.method pendingMessageSent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 555
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPendingCommand:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const-string/jumbo v1, "SessionMdxTarget"

    const-string/jumbo v2, "has %d, removing %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPendingCommand:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPendingCommand:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 557
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPendingCommand:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "pendingMessageSent, but no message is currently pending"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method reportError(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 564
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "reportError %d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 565
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->resetState()V

    .line 566
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mNotifier:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->error(Ljava/lang/String;ILjava/lang/String;)V

    .line 567
    return-void
.end method

.method public selectTarget(Z)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$1;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method

.method public sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V
    .locals 5

    .prologue
    .line 173
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "sendCommand %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method sendPendingMessage()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 547
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPendingCommand:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v2, "sendPendingMessage, no message is currently pending"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 552
    :goto_0
    return v0

    .line 551
    :cond_0
    const-string/jumbo v2, "SessionMdxTarget"

    const-string/jumbo v3, "has %d, sending %s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPendingCommand:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPendingCommand:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 552
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mPendingCommand:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendMessageMdxTarget(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldIgnoreDeviceLostEvent()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 366
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->supportXprofile:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mExpectTargetRestartDeadlineMs:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method startSession()V
    .locals 5

    .prologue
    .line 525
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils;->startSessionMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getSessionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    const-string/jumbo v1, "SessionMdxTarget"

    const-string/jumbo v2, "startSession [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 527
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mSessionMdxStack:Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;

    const-string/jumbo v2, "session"

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_0
    return-void
.end method

.method supportRegpair()Z
    .locals 2

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;->PAIRING:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$PairingScheme;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unselectTarget()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->mStateMachine:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$2;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method
