.class final enum Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;
.super Ljava/lang/Enum;
.source "OfflinePlaybackSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

.field public static final enum none:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

.field public static final enum rebuffer:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

.field public static final enum repos:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

.field public static final enum skip:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 644
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    const-string/jumbo v1, "none"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->none:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    .line 645
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    const-string/jumbo v1, "repos"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->repos:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    .line 646
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    const-string/jumbo v1, "rebuffer"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->rebuffer:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    .line 647
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    const-string/jumbo v1, "skip"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->skip:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    .line 643
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->none:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->repos:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->rebuffer:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->skip:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->$VALUES:[Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

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
    .line 643
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;
    .locals 1

    .prologue
    .line 643
    const-class v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;
    .locals 1

    .prologue
    .line 643
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->$VALUES:[Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$ResumePlayReason;

    return-object v0
.end method
