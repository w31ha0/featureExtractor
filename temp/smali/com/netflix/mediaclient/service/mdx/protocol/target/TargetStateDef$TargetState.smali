.class public final enum Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;
.super Ljava/lang/Enum;
.source "TargetStateDef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

.field public static final enum StateAcquirePair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

.field public static final enum StateGetCap:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

.field public static final enum StateGetState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

.field public static final enum StateHandShake:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

.field public static final enum StateHasPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

.field public static final enum StateInit:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

.field public static final enum StateNoPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

.field public static final enum StateRegPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

.field public static final enum StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

.field public static final enum StateSessionReady:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

.field public static final enum StateStartSession:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;


# instance fields
.field private mBaseRetryIntreval:I

.field private mId:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

.field private mName:Ljava/lang/String;

.field private mRetry:I

.field private mTimeOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/16 v13, 0x1f40

    const/16 v12, 0x3e8

    const/4 v11, 0x2

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    const-string/jumbo v1, "StateInit"

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_INIT:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v4, "STATE_INIT"

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateInit:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 38
    new-instance v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    const-string/jumbo v4, "StateHasPair"

    sget-object v6, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_HASPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v7, "STATE_HASPAIR"

    move v5, v14

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;Ljava/lang/String;III)V

    sput-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 39
    new-instance v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    const-string/jumbo v4, "StateNoPair"

    sget-object v6, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_NOPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v7, "STATE_NOPAIR"

    move v5, v11

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;Ljava/lang/String;III)V

    sput-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 40
    new-instance v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    const-string/jumbo v4, "StateSessionReady"

    const/4 v5, 0x3

    sget-object v6, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_SESSION_READY:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v7, "STATE_SESSION_READY"

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;Ljava/lang/String;III)V

    sput-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 42
    new-instance v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    const-string/jumbo v4, "StateAcquirePair"

    const/4 v5, 0x4

    sget-object v6, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_ACQUIRE_PAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v7, "STATE_ACQUIRE_PAIR"

    const/16 v9, 0x3e80

    move v8, v11

    move v10, v12

    invoke-direct/range {v3 .. v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;Ljava/lang/String;III)V

    sput-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateAcquirePair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 43
    new-instance v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    const-string/jumbo v4, "StateRegPair"

    const/4 v5, 0x5

    sget-object v6, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_REGPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v7, "STATE_REGPAIR"

    const/16 v9, 0x7d00

    move v8, v11

    move v10, v12

    invoke-direct/range {v3 .. v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;Ljava/lang/String;III)V

    sput-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateRegPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 44
    new-instance v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    const-string/jumbo v4, "StateStartSession"

    const/4 v5, 0x6

    sget-object v6, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_START_SESSION:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v7, "STATE_START_SESSION"

    move v8, v11

    move v9, v13

    move v10, v12

    invoke-direct/range {v3 .. v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;Ljava/lang/String;III)V

    sput-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateStartSession:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 45
    new-instance v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    const-string/jumbo v4, "StateHandShake"

    const/4 v5, 0x7

    sget-object v6, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_HAND_SHAKE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v7, "STATE_HAND_SHAKE"

    move v8, v11

    move v9, v13

    move v10, v12

    invoke-direct/range {v3 .. v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;Ljava/lang/String;III)V

    sput-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateHandShake:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 46
    new-instance v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    const-string/jumbo v4, "StateGetCap"

    const/16 v5, 0x8

    sget-object v6, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_GET_CAP:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v7, "STATE_GET_CAP"

    move v8, v11

    move v9, v13

    move v10, v12

    invoke-direct/range {v3 .. v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;Ljava/lang/String;III)V

    sput-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateGetCap:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 47
    new-instance v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    const-string/jumbo v4, "StateGetState"

    const/16 v5, 0x9

    sget-object v6, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_GET_STATE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v7, "STATE_GET_STATE"

    move v8, v11

    move v9, v13

    move v10, v12

    invoke-direct/range {v3 .. v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;Ljava/lang/String;III)V

    sput-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateGetState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 48
    new-instance v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    const-string/jumbo v4, "StateSendingMessage"

    const/16 v5, 0xa

    sget-object v6, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_SENDING_MESSAGE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v7, "STATE_SENDING_MESSAGE"

    move v8, v11

    move v9, v13

    move v10, v12

    invoke-direct/range {v3 .. v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;Ljava/lang/String;III)V

    sput-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    .line 36
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateInit:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    aput-object v1, v0, v14

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    aput-object v1, v0, v11

    const/4 v1, 0x3

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateAcquirePair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateRegPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateStartSession:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateHandShake:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateGetCap:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateGetState:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mRetry:I

    .line 61
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mBaseRetryIntreval:I

    .line 50
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mName:Ljava/lang/String;

    .line 51
    iput p5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mRetry:I

    .line 52
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mId:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    .line 53
    iput p6, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mTimeOut:I

    .line 54
    iput p7, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mBaseRetryIntreval:I

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    return-object v0
.end method


# virtual methods
.method public getId()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mId:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRetry()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mRetry:I

    return v0
.end method

.method public getRetryInterval()I
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mBaseRetryIntreval:I

    .line 76
    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mBaseRetryIntreval:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mBaseRetryIntreval:I

    .line 77
    return v0
.end method

.method public getTimeOut()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mTimeOut:I

    return v0
.end method

.method public isRetryExhausted()Z
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mRetry:I

    if-gez v0, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 89
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mRetry:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->mRetry:I

    .line 90
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSame(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;)Z
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getId()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSame(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)Z
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getId()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getId()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
