.class public Lcom/netflix/mediaclient/service/mdx/protocol/message/target/AudioSubChanged;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;
.source "AudioSubChanged.java"


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "AUDIO_SUBTITLES_CHANGED"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/AudioSubChanged;->appBodyJson:Lorg/json/JSONObject;

    .line 14
    return-void
.end method
