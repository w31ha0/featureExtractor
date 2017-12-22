.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IPlayer;
.super Ljava/lang/Object;
.source "IPlayer.java"


# static fields
.field public static final EXTRA_TYPE:Ljava/lang/String; = "lookupType"

.field public static final LOCAL_INTENT_CATEGORY:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.PLAYER"

.field public static final PLAYER_AUDIO_SUBTITLE_CHANGED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAYER_AUDIO_SUBTITLE_CHANGED"

.field public static final PLAYER_HDR_FORMAT_CHANGED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAYER_HDR_FORMAT_CHANGED"

.field public static final PLAYER_LOCAL_PLAYBACK_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

.field public static final PLAYER_LOCAL_PLAYBACK_PAUSED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_PAUSED"

.field public static final PLAYER_LOCAL_PLAYBACK_STARTED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

.field public static final PLAYER_LOCAL_PLAYBACK_UNPAUSED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_UNPAUSED"

.field public static final PLAYER_SUBTITLE_CONFIG_CHANGED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAYER_SUBTITLE_CONFIG_CHANGED"


# virtual methods
.method public abstract addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
.end method

.method public abstract close()V
.end method

.method public abstract getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
.end method

.method public abstract getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
.end method

.method public abstract getBifFrame(J)Ljava/nio/ByteBuffer;
.end method

.method public abstract getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;
.end method

.method public abstract getCurrentPlayableId()J
.end method

.method public abstract getCurrentPositionInMs()J
.end method

.method public abstract getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
.end method

.method public abstract getPlayerManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;
.end method

.method public abstract getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;
.end method

.method public abstract getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;
.end method

.method public abstract getSubtitleProfileFromMetadata()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
.end method

.method public abstract getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract openPlaybackSessionAndPlay(JLcom/netflix/mediaclient/ui/common/PlayContext;J)Ljava/lang/String;
.end method

.method public abstract pause()V
.end method

.method public abstract prepare(Ljava/util/List;)V
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

.method public abstract removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V
.end method

.method public abstract reportSubtitleVisibilityChanged(Z)V
.end method

.method public abstract seekTo(JZ)V
.end method

.method public abstract seekWithFuzzRange(II)V
.end method

.method public abstract selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z
.end method

.method public abstract setAudioDuck(Z)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract unpause()V
.end method
