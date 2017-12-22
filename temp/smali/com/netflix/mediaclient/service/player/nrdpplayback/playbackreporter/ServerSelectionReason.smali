.class final enum Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;
.super Ljava/lang/Enum;
.source "ServerSelectionReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

.field public static final enum SERVER_BITRATE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

.field public static final enum SERVER_LOCATIONFAILOVER:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

.field public static final enum SERVER_PERFORMANCE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

.field public static final enum SERVER_PROBE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

.field public static final enum SERVER_PROBEABORTED:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

.field public static final enum SERVER_PROBEDONE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

.field public static final enum SERVER_SERVERFAILOVER:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

.field public static final enum SERVER_STARTUP:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

.field public static final enum SERVER_UNKNOWN:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private reason:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 12
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    const-string/jumbo v2, "SERVER_UNKNOWN"

    invoke-direct {v1, v2, v0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_UNKNOWN:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    .line 13
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    const-string/jumbo v2, "SERVER_STARTUP"

    invoke-direct {v1, v2, v5, v5}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_STARTUP:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    .line 14
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    const-string/jumbo v2, "SERVER_PROBE"

    invoke-direct {v1, v2, v6, v6}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_PROBE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    .line 15
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    const-string/jumbo v2, "SERVER_PROBEDONE"

    invoke-direct {v1, v2, v7, v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_PROBEDONE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    .line 16
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    const-string/jumbo v2, "SERVER_PROBEABORTED"

    invoke-direct {v1, v2, v8, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_PROBEABORTED:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    .line 17
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    const-string/jumbo v2, "SERVER_PERFORMANCE"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_PERFORMANCE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    .line 18
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    const-string/jumbo v2, "SERVER_BITRATE"

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_BITRATE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    .line 19
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    const-string/jumbo v2, "SERVER_SERVERFAILOVER"

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_SERVERFAILOVER:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    .line 20
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    const-string/jumbo v2, "SERVER_LOCATIONFAILOVER"

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_LOCATIONFAILOVER:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    .line 11
    const/16 v1, 0x9

    new-array v1, v1, [Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_UNKNOWN:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    aput-object v2, v1, v0

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_STARTUP:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_PROBE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_PROBEDONE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_PROBEABORTED:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_PERFORMANCE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_BITRATE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_SERVERFAILOVER:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_LOCATIONFAILOVER:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    aput-object v3, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->$VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->map:Ljava/util/Map;

    .line 25
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->values()[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 26
    sget-object v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->map:Ljava/util/Map;

    iget v5, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->reason:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->reason:I

    .line 32
    return-void
.end method

.method public static valueOf(I)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->map:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->$VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    return-object v0
.end method
