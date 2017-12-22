.class public Lcom/netflix/mediaclient/service/mdx/protocol/message/target/AudioSubtitleSetting;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;
.source "AudioSubtitleSetting.java"


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "AUDIO_SUBTITLES_SETTINGS"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/AudioSubtitleSetting;->appBodyJson:Lorg/json/JSONObject;

    .line 13
    return-void
.end method
