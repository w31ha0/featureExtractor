.class public Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;
.super Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;
.source "StreamSelected.java"


# static fields
.field private static final ATTR_MANIFEST_INDEX:Ljava/lang/String; = "manifestIndex"

.field private static final ATTR_START_PTS:Ljava/lang/String; = "startPts"

.field private static final ATTR_STREAM_INDEX:Ljava/lang/String; = "streamIndex"

.field private static final ATTR_TRACK_INDEX:Ljava/lang/String; = "trackIndex"

.field private static final ATTR_bandwidth:Ljava/lang/String; = "bandwidth"

.field private static final ATTR_longtermBw:Ljava/lang/String; = "longtermBw"

.field private static final ATTR_movieTime:Ljava/lang/String; = "movieTime"

.field private static final ATTR_nativetime:Ljava/lang/String; = "nativetime"

.field private static final ATTR_rebuffer:Ljava/lang/String; = "rebuffer"

.field public static final TYPE:Ljava/lang/String;


# instance fields
.field private mBandwidth:I

.field private mLongtermBw:I

.field private mManifestIndex:I

.field private mMovieTime:J

.field private mNativetime:J

.field private mRebuffer:I

.field private mStartPts:I

.field private mStreamIndex:I

.field private mTrackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->player_streamSelected:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$ASPlayerEventEnum;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->TYPE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getBandwidth()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mBandwidth:I

    return v0
.end method

.method public getLongtermBw()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mLongtermBw:I

    return v0
.end method

.method public getManifestIndex()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mManifestIndex:I

    return v0
.end method

.method public getMovieTime()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mMovieTime:J

    return-wide v0
.end method

.method public getNativetime()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mNativetime:J

    return-wide v0
.end method

.method public getRebuffer()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mRebuffer:I

    return v0
.end method

.method public getStartPts()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mStartPts:I

    return v0
.end method

.method public getStreamIndex()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mStreamIndex:I

    return v0
.end method

.method public getTrackIndex()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mTrackIndex:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    .line 41
    const-string/jumbo v0, "manifestIndex"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mManifestIndex:I

    .line 42
    const-string/jumbo v0, "trackIndex"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mTrackIndex:I

    .line 43
    const-string/jumbo v0, "streamIndex"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mStreamIndex:I

    .line 44
    const-string/jumbo v0, "startPts"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mStartPts:I

    .line 45
    const-string/jumbo v0, "rebuffer"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mRebuffer:I

    .line 48
    const-string/jumbo v0, "nativetime"

    invoke-static {p1, v0, v4, v5}, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mNativetime:J

    .line 49
    const-string/jumbo v0, "movieTime"

    invoke-static {p1, v0, v4, v5}, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mMovieTime:J

    .line 50
    const-string/jumbo v0, "bandwidth"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mBandwidth:I

    .line 51
    const-string/jumbo v0, "longtermBw"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->mLongtermBw:I

    .line 53
    return-void
.end method
