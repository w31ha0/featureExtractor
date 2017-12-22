.class public final enum Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;
.super Ljava/lang/Enum;
.source "TargetStateDef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum HandShakeFailed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum HandShakeSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum MessageFailRetry:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum MessageReceived:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum PairFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum PairFailedNeedRegPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum PairSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum PeriodicStateCheck:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum SendMessageFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum SendMessageFailedBadPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum SendMessageFailedNeedNewSession:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum SendMessageRequested:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum SendMessageSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum StartSessionFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum StartSessionSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum Timeout:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field public static final enum start:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "PairSucceed"

    invoke-direct {v0, v1, v4, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PairSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 97
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "PairFail"

    invoke-direct {v0, v1, v5, v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PairFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 98
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "PairFailedNeedRegPair"

    invoke-direct {v0, v1, v6, v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PairFailedNeedRegPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "StartSessionSucceed"

    invoke-direct {v0, v1, v7, v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->StartSessionSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 100
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "StartSessionFail"

    invoke-direct {v0, v1, v8, v8}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->StartSessionFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "HandShakeSucceed"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->HandShakeSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 102
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "HandShakeFailed"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->HandShakeFailed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 104
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "SendMessageSucceed"

    const/4 v2, 0x7

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 105
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "SendMessageFail"

    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 106
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "SendMessageFailedNeedNewSession"

    const/16 v2, 0x9

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageFailedNeedNewSession:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 107
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "SendMessageFailedBadPair"

    const/16 v2, 0xa

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageFailedBadPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 109
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "MessageReceived"

    const/16 v2, 0xb

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->MessageReceived:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 110
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "SendMessageRequested"

    const/16 v2, 0xc

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageRequested:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "MessageFailRetry"

    const/16 v2, 0xd

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->MessageFailRetry:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 113
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "Timeout"

    const/16 v2, 0xe

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 114
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "start"

    const/16 v2, 0xf

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->start:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 115
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    const-string/jumbo v1, "PeriodicStateCheck"

    const/16 v2, 0x10

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PeriodicStateCheck:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 95
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PairSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PairFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PairFailedNeedRegPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->StartSessionSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->StartSessionFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->HandShakeSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->HandShakeFailed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageFailedNeedNewSession:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageFailedBadPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->MessageReceived:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageRequested:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->MessageFailRetry:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->start:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PeriodicStateCheck:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->id:I

    .line 119
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->id:I

    return v0
.end method

.method public isSame(I)Z
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->id:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
