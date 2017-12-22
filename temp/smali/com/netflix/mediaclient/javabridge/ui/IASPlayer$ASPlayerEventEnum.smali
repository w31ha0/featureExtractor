.class public final enum Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;
.super Ljava/lang/Enum;
.source "IASPlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum generic_background:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_audioTrackChanged:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_bufferRange:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_buffering:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_bufferingComplete:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_endOfStream:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_error:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_hevcInfo:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_manifestSelected:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_openComplete:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_playbackReporter:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_playbackStat:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_provideChallenge:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_restart:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_stateChanged:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_streamPresenting:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_streamSelected:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_streamingStat:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_underflow:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_updatePts:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_updateVideoBitrate:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

.field public static final enum player_videoBitrateChanged:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;


# instance fields
.field protected eventName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_openComplete"

    const-string/jumbo v2, "openComplete"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_openComplete:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_streamSelected"

    const-string/jumbo v2, "streamSelected"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_streamSelected:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_endOfStream"

    const-string/jumbo v2, "endOfStream"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_endOfStream:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_underflow"

    const-string/jumbo v2, "underflow"

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_underflow:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_buffering"

    const-string/jumbo v2, "buffering"

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_buffering:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_bufferingComplete"

    const/4 v2, 0x5

    const-string/jumbo v3, "bufferingComplete"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_bufferingComplete:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_updatePts"

    const/4 v2, 0x6

    const-string/jumbo v3, "updatePts"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_updatePts:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_videoBitrateChanged"

    const/4 v2, 0x7

    const-string/jumbo v3, "videoBitrateChanged"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_videoBitrateChanged:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_audioTrackChanged"

    const/16 v2, 0x8

    const-string/jumbo v3, "audioTrackChanged"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_audioTrackChanged:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_error"

    const/16 v2, 0x9

    const-string/jumbo v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_error:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_stateChanged"

    const/16 v2, 0xa

    const-string/jumbo v3, "stateChanged"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_stateChanged:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 49
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_bufferRange"

    const/16 v2, 0xb

    const-string/jumbo v3, "bufferRange"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_bufferRange:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 50
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_manifestSelected"

    const/16 v2, 0xc

    const-string/jumbo v3, "manifestSelected"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_manifestSelected:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 51
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_hevcInfo"

    const/16 v2, 0xd

    const-string/jumbo v3, "hevcInfo"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_hevcInfo:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_playbackStat"

    const/16 v2, 0xe

    const-string/jumbo v3, "playbackStat"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_playbackStat:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_streamingStat"

    const/16 v2, 0xf

    const-string/jumbo v3, "streamingStat"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_streamingStat:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 54
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_restart"

    const/16 v2, 0x10

    const-string/jumbo v3, "restart"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_restart:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_updateVideoBitrate"

    const/16 v2, 0x11

    const-string/jumbo v3, "updateVideoBitrate"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_updateVideoBitrate:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_streamPresenting"

    const/16 v2, 0x12

    const-string/jumbo v3, "streamPresenting"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_streamPresenting:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 57
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_provideChallenge"

    const/16 v2, 0x13

    const-string/jumbo v3, "provideChallenge"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_provideChallenge:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "generic_background"

    const/16 v2, 0x14

    const-string/jumbo v3, "background"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->generic_background:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 59
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    const-string/jumbo v1, "player_playbackReporter"

    const/16 v2, 0x15

    const-string/jumbo v3, "playbackReporter"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_playbackReporter:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    .line 37
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_openComplete:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_streamSelected:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_endOfStream:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_underflow:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_buffering:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_bufferingComplete:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_updatePts:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_videoBitrateChanged:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_audioTrackChanged:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_error:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_stateChanged:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_bufferRange:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_manifestSelected:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_hevcInfo:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_playbackStat:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_streamingStat:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_restart:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_updateVideoBitrate:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_streamPresenting:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_provideChallenge:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->generic_background:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_playbackReporter:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->$VALUES:[Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-object p3, p0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->eventName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->$VALUES:[Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->eventName:Ljava/lang/String;

    return-object v0
.end method
