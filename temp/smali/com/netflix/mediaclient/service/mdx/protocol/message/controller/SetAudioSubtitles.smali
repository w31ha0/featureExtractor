.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/SetAudioSubtitles;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "SetAudioSubtitles.java"


# static fields
.field private static PROPERTY_audio_track_id:Ljava/lang/String;

.field private static PROPERTY_timed_text_track_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "timed_text_track_id"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/SetAudioSubtitles;->PROPERTY_timed_text_track_id:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "audio_track_id"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/SetAudioSubtitles;->PROPERTY_audio_track_id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "SET_AUDIO_SUBTITLES"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/SetAudioSubtitles;->PROPERTY_audio_track_id:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/SetAudioSubtitles;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/SetAudioSubtitles;->PROPERTY_timed_text_track_id:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/SetAudioSubtitles;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
