.class public final enum Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;
.super Ljava/lang/Enum;
.source "IBladeRunnerClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

.field public static final enum KEEP_ALIVE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

.field public static final enum PAUSE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

.field public static final enum RESUME:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

.field public static final enum SPLICE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

.field public static final enum START:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

.field public static final enum STOP:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    const-string/jumbo v1, "START"

    const-string/jumbo v2, "start"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->START:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    .line 124
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    const-string/jumbo v1, "STOP"

    const-string/jumbo v2, "stop"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->STOP:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    .line 125
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    const-string/jumbo v1, "SPLICE"

    const-string/jumbo v2, "splice"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->SPLICE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    .line 126
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    const-string/jumbo v1, "PAUSE"

    const-string/jumbo v2, "pause"

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->PAUSE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    .line 127
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    const-string/jumbo v1, "RESUME"

    const-string/jumbo v2, "resume"

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->RESUME:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    .line 128
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    const-string/jumbo v1, "KEEP_ALIVE"

    const/4 v2, 0x5

    const-string/jumbo v3, "keepAlive"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->KEEP_ALIVE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    .line 129
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x6

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->UNKNOWN:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    .line 122
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->START:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->STOP:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->SPLICE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->PAUSE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->RESUME:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->KEEP_ALIVE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->UNKNOWN:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->$VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->value:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;
    .locals 5

    .prologue
    .line 138
    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 139
    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    :goto_1
    return-object v0

    .line 138
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 143
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->UNKNOWN:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;
    .locals 1

    .prologue
    .line 122
    const-class v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->$VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->value:Ljava/lang/String;

    return-object v0
.end method
