.class public final enum Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;
.super Ljava/lang/Enum;
.source "TargetStateDef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

.field public static final enum STATE_ACQUIRE_PAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

.field public static final enum STATE_GET_CAP:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

.field public static final enum STATE_GET_STATE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

.field public static final enum STATE_HAND_SHAKE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

.field public static final enum STATE_HASPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

.field public static final enum STATE_INIT:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

.field public static final enum STATE_NOPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

.field public static final enum STATE_REGPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

.field public static final enum STATE_SENDING_MESSAGE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

.field public static final enum STATE_SESSION_READY:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

.field public static final enum STATE_START_SESSION:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v1, "STATE_INIT"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_INIT:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v1, "STATE_NOPAIR"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_NOPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v1, "STATE_HASPAIR"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_HASPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v1, "STATE_SESSION_READY"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_SESSION_READY:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v1, "STATE_ACQUIRE_PAIR"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_ACQUIRE_PAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v1, "STATE_REGPAIR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_REGPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v1, "STATE_START_SESSION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_START_SESSION:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v1, "STATE_HAND_SHAKE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_HAND_SHAKE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v1, "STATE_GET_CAP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_GET_CAP:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v1, "STATE_GET_STATE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_GET_STATE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    const-string/jumbo v1, "STATE_SENDING_MESSAGE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_SENDING_MESSAGE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    .line 21
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_INIT:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_NOPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_HASPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_SESSION_READY:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_ACQUIRE_PAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_REGPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_START_SESSION:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_HAND_SHAKE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_GET_CAP:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_GET_STATE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->STATE_SENDING_MESSAGE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    return-object v0
.end method
