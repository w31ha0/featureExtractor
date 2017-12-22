.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/GetAudioSubtitles;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "GetAudioSubtitles.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "GET_AUDIO_SUBTITLES"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method
