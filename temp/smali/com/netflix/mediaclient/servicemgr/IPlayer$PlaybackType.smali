.class public final enum Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;
.super Ljava/lang/Enum;
.source "IPlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

.field public static final enum OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

.field public static final enum StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

.field public static final enum Unknown:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    const-string/jumbo v1, "StreamingPlayback"

    const-string/jumbo v2, "StreamingPlayback"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    const-string/jumbo v1, "OfflinePlayback"

    const-string/jumbo v2, "OfflinePlayback"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    const-string/jumbo v1, "Unknown"

    const-string/jumbo v2, "Unknown"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->Unknown:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->Unknown:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->value:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;
    .locals 5

    .prologue
    .line 50
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->values()[Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 51
    iget-object v4, v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    :goto_1
    return-object v0

    .line 50
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 55
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->Unknown:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->value:Ljava/lang/String;

    return-object v0
.end method
