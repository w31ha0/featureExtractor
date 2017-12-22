.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IMdx;
.super Ljava/lang/Object;
.source "IMdx.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field public static final CATEGORY_NFMDX:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.MDX"

.field public static final CATEGORY_NFMDXRCC:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.MDXRCC"

.field public static final MDXUPDATE_AUDIOSUB:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_AUDIOSUB"

.field public static final MDXUPDATE_CAPABILITY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_CAPABILITY"

.field public static final MDXUPDATE_DIALOGCANCEL:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_DIALOGCANCEL"

.field public static final MDXUPDATE_DIALOGSHOW:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_DIALOGSHOW"

.field public static final MDXUPDATE_ERROR:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_ERROR"

.field public static final MDXUPDATE_METADATA:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_METADATA"

.field public static final MDXUPDATE_MOVIEMETADATA:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_MOVIEMETADA"

.field public static final MDXUPDATE_MOVIEMETADATA_AVAILABLE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_MOVIEMETADATA_AVAILABLE"

.field public static final MDXUPDATE_NOTREADY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_NOTREADY"

.field public static final MDXUPDATE_PIN_VERIFICATION_SHOW:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PIN_VERIFICATION_SHOW"

.field public static final MDXUPDATE_PLAYBACKEND:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKEND"

.field public static final MDXUPDATE_PLAYBACKSTART:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKSTART"

.field public static final MDXUPDATE_POSTPLAY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_POSTPLAY"

.field public static final MDXUPDATE_READY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_READY"

.field public static final MDXUPDATE_SIMPLE_PLAYBACKSTATE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_SIMPLE_PLAYBACKSTATE"

.field public static final MDXUPDATE_STATE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

.field public static final MDXUPDATE_TARGETLIST:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDXUPDATE_TARGETLIST"

.field public static final MDX_AUTOADV:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_AUTOADV"

.field public static final MDX_CUSTOMER_SUPPORT_CAST_DISCOVERY_ISSUE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_CS_CAST_DISCOVERY_ISSUE"

.field public static final MDX_DIALOGRESP:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_DIALOGRESP"

.field public static final MDX_ERROR_LAUNCH_ERROR:I = 0x6a

.field public static final MDX_ERROR_MAP:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MDX_ERROR_PAIR_ERROR:I = 0x68

.field public static final MDX_ERROR_PAIR_TIMEOUT:I = 0x67

.field public static final MDX_ERROR_SESSION_ERROR:I = 0x69

.field public static final MDX_ERROR_SESSION_TIMEOUT:I = 0x64

.field public static final MDX_ERROR_SHOW_TOAST:I = 0x12c

.field public static final MDX_ERROR_TARGETCONTEXT_GONE:I = 0xc9

.field public static final MDX_ERROR_TARGET_GONE:I = 0xc8

.field public static final MDX_EXTRA_AUDIO_TRACK_ID:Ljava/lang/String; = "audioTrackId"

.field public static final MDX_EXTRA_CATALOG_ID:Ljava/lang/String; = "catalogId"

.field public static final MDX_EXTRA_CONNECTED:Ljava/lang/String; = "networkConnected"

.field public static final MDX_EXTRA_CURRENT_STATE:Ljava/lang/String; = "currentState"

.field public static final MDX_EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final MDX_EXTRA_DURATION:Ljava/lang/String; = "duration"

.field public static final MDX_EXTRA_ENDPLAY_UPDATE_CW:Ljava/lang/String; = "updateCW"

.field public static final MDX_EXTRA_EPISODE_ID:Ljava/lang/String; = "episodeId"

.field public static final MDX_EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final MDX_EXTRA_ERROR_DESC:Ljava/lang/String; = "errorDesc"

.field public static final MDX_EXTRA_PAUSED:Ljava/lang/String; = "paused"

.field public static final MDX_EXTRA_PIN_ANCESTOR_VIDEOID:Ljava/lang/String; = "ancestorVideoId"

.field public static final MDX_EXTRA_PIN_ANCESTOR_VIDEOTYPE:Ljava/lang/String; = "ancestorVideoType"

.field public static final MDX_EXTRA_PIN_ISVERIFIED:Ljava/lang/String; = "isPinVerified"

.field public static final MDX_EXTRA_PIN_TITLE:Ljava/lang/String; = "title"

.field public static final MDX_EXTRA_PIN_VIDEOID:Ljava/lang/String; = "videoId"

.field public static final MDX_EXTRA_POSITION_SECONDS:Ljava/lang/String; = "time"

.field public static final MDX_EXTRA_POSTPLAYSTATE:Ljava/lang/String; = "postplayState"

.field public static final MDX_EXTRA_POSTPLAY_PLAYNEXT:Ljava/lang/String; = "playNext"

.field public static final MDX_EXTRA_PREVIEW_PIN_PROTECTED:Ljava/lang/String; = "previewPinProtected"

.field public static final MDX_EXTRA_SPEED:Ljava/lang/String; = "speed"

.field public static final MDX_EXTRA_STRING_BLOB:Ljava/lang/String; = "stringBlob"

.field public static final MDX_EXTRA_SUBTITLE_TRACK_ID:Ljava/lang/String; = "subtitleTrackId"

.field public static final MDX_EXTRA_TRACKID:Ljava/lang/String; = "trackId"

.field public static final MDX_EXTRA_TRANSITIONING:Ljava/lang/String; = "transitioning"

.field public static final MDX_EXTRA_TYPE:Ljava/lang/String; = "type"

.field public static final MDX_EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final MDX_EXTRA_UUID:Ljava/lang/String; = "uuid"

.field public static final MDX_EXTRA_VOLUME:Ljava/lang/String; = "volume"

.field public static final MDX_GETAUDIOSUB:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_GETAUDIOSUB"

.field public static final MDX_GETCAPABILITY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_GETCAPABILITY"

.field public static final MDX_GETSTATE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_GETSTATE"

.field public static final MDX_METADATA:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_METADATA"

.field public static final MDX_NETWORK_CONNECTIVITY_CHANGE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_NETWORK_CONNECTIVITY_CHANGE"

.field public static final MDX_PAUSE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_PAUSE"

.field public static final MDX_PINCANCELLED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_PINCANCELLED"

.field public static final MDX_PINCONFIRMED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_PINCONFIRMED"

.field public static final MDX_PLAY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_PLAY"

.field public static final MDX_PLAY_VIDEOIDS:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_PLAY_VIDEOIDS"

.field public static final MDX_RESUME:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_RESUME"

.field public static final MDX_SEEK:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_SEEK"

.field public static final MDX_SELECT_TARGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_SELECT_TARGET"

.field public static final MDX_SETAUDIOSUB:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_SETAUDIOSUB"

.field public static final MDX_SETVOLUME:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_SETVOLUME"

.field public static final MDX_SKIP:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_SKIP"

.field public static final MDX_STOP:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_STOP"

.field public static final MDX_STOPPOSTPALY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_STOPPOSTPALY"

.field public static final MDX_TOGGLE_PAUSE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MDX_TOGGLE_PAUSE"

.field public static final PIN_VERIFICATION_NOT_REQUIRED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PIN_VERIFICATION_NOT_REQUIRED"

.field public static final PLAYER_STATE_AUTO_ADVANCE:Ljava/lang/String; = "AUTO_ADVANCE"

.field public static final PLAYER_STATE_END_PLAYBACK:Ljava/lang/String; = "END_PLAYBACK"

.field public static final PLAYER_STATE_FATAL_ERROR:Ljava/lang/String; = "FATAL_ERROR"

.field public static final PLAYER_STATE_PAUSE:Ljava/lang/String; = "PAUSE"

.field public static final PLAYER_STATE_PLAY:Ljava/lang/String; = "PLAY"

.field public static final PLAYER_STATE_PLAYING:Ljava/lang/String; = "PLAYING"

.field public static final PLAYER_STATE_PREPAUSE:Ljava/lang/String; = "prepause"

.field public static final PLAYER_STATE_PREPLAY:Ljava/lang/String; = "preplay"

.field public static final PLAYER_STATE_PRESEEK:Ljava/lang/String; = "preseek"

.field public static final PLAYER_STATE_PROGRESS:Ljava/lang/String; = "PROGRESS"

.field public static final PLAYER_STATE_STALLED:Ljava/lang/String; = "STALLED"

.field public static final PLAYER_STATE_STOP:Ljava/lang/String; = "STOP"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IMdx$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IMdx;->MDX_ERROR_MAP:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract getBifFrame(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getCurrentTarget()Ljava/lang/String;
.end method

.method public abstract getCurrentTargetCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;
.end method

.method public abstract getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;
.end method

.method public abstract getTargetList()[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
.end method

.method public abstract getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract isTargetLaunchingOrLaunched()Z
.end method

.method public abstract prefetchVideo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCurrentTarget(Ljava/lang/String;)V
.end method

.method public abstract setDialUuidAsCurrentTarget(Ljava/lang/String;)Z
.end method

.method public abstract switchPlaybackFromTarget(Ljava/lang/String;I)V
.end method

.method public abstract transferPlaybackFromLocal()V
.end method
