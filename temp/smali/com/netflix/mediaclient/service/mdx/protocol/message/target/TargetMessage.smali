.class public abstract Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/MdxMessage;
.source "TargetMessage.java"


# static fields
.field public static final TYPE_AUDIO_SUBTITLES_CHANGED:Ljava/lang/String; = "AUDIO_SUBTITLES_CHANGED"

.field public static final TYPE_AUDIO_SUBTITLES_SETTINGS:Ljava/lang/String; = "AUDIO_SUBTITLES_SETTINGS"

.field public static final TYPE_DIALOG_CANCEL:Ljava/lang/String; = "DIALOG_CANCEL"

.field public static final TYPE_DIALOG_SHOW:Ljava/lang/String; = "DIALOG_SHOW"

.field public static final TYPE_HANDSHAKE_ACCEPTED:Ljava/lang/String; = "HANDSHAKE_ACCEPTED"

.field public static final TYPE_PIN_VERIFICATION_NOT_REQUIRED:Ljava/lang/String; = "PIN_VERIFICATION_NOT_REQUIRED"

.field public static final TYPE_PIN_VERIFICATION_SHOW:Ljava/lang/String; = "PIN_VERIFICATION_SHOW"

.field public static final TYPE_PLAYER_CAPABILITIES:Ljava/lang/String; = "PLAYER_CAPABILITIES"

.field public static final TYPE_PLAYER_CURRENT_STATE:Ljava/lang/String; = "PLAYER_CURRENT_STATE"

.field public static final TYPE_PLAYER_STATE_CHANGED:Ljava/lang/String; = "PLAYER_STATE_CHANGED"

.field static final TYPE_SESSION_ACTION_START_SESSION_RESPONSE:Ljava/lang/String; = "startSessionResponse"


# instance fields
.field protected appBodyJson:Lorg/json/JSONObject;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static ParsingSessionActionAndNotify(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 35
    const-string/jumbo v3, "sessionAction"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 45
    const-string/jumbo v3, "appAction"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    const-string/jumbo v4, "appBody"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    :cond_1
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 86
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 36
    :sswitch_0
    const-string/jumbo v4, "startSessionResponse"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "endSession"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    .line 38
    :pswitch_0
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_STARTSESSION:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/StartSessionResponse;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/StartSessionResponse;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto :goto_2

    .line 41
    :pswitch_1
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_ENDSESSOIN:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetEndSession;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetEndSession;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto :goto_2

    .line 48
    :sswitch_2
    const-string/jumbo v2, "HANDSHAKE_ACCEPTED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "AUDIO_SUBTITLES_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "AUDIO_SUBTITLES_SETTINGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "DIALOG_CANCEL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "DIALOG_SHOW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "PLAYER_CAPABILITIES"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_8
    const-string/jumbo v0, "PLAYER_CURRENT_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_9
    const-string/jumbo v0, "PLAYER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v0, "PIN_VERIFICATION_SHOW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v0, "PIN_VERIFICATION_NOT_REQUIRED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v0, "META_DATA_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v0, "MESSAGE_IGNORED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    .line 50
    :pswitch_2
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_HANDSHAKE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/HandshakeAccepted;

    invoke-direct {v2, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/HandshakeAccepted;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto/16 :goto_2

    .line 53
    :pswitch_3
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_AUDIO_SUBTITLES_CHANGED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/AudioSubChanged;

    invoke-direct {v2, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/AudioSubChanged;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto/16 :goto_2

    .line 56
    :pswitch_4
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_AUDIO_SUBTITLE_SETTINGS:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/AudioSubtitleSetting;

    invoke-direct {v2, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/AudioSubtitleSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto/16 :goto_2

    .line 59
    :pswitch_5
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_DIALOG_CANCEL:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogCancel;

    invoke-direct {v2, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogCancel;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto/16 :goto_2

    .line 62
    :pswitch_6
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_DIALOG_SHOW:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;

    invoke-direct {v2, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/DialogShow;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto/16 :goto_2

    .line 65
    :pswitch_7
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_CAPABILITY:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerCapabilities;

    invoke-direct {v2, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerCapabilities;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto/16 :goto_2

    .line 68
    :pswitch_8
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_CURRENT_STATE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerCurrentState;

    invoke-direct {v2, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerCurrentState;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto/16 :goto_2

    .line 71
    :pswitch_9
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_STATE_CHANGED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerStateChanged;

    invoke-direct {v2, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PlayerStateChanged;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto/16 :goto_2

    .line 74
    :pswitch_a
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_PIN_VERIFICATION_SHOW:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;

    invoke-direct {v2, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto/16 :goto_2

    .line 77
    :pswitch_b
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_PIN_VERIFICATION_NOT_REQUIRED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinNotRequired;

    invoke-direct {v2, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinNotRequired;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto/16 :goto_2

    .line 80
    :pswitch_c
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_META_DATA_CHANGED:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/MetaDataChanged;

    invoke-direct {v2, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/MetaDataChanged;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto/16 :goto_2

    .line 83
    :pswitch_d
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_GENERIC:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/MessageIgnored;

    invoke-direct {v2, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/MessageIgnored;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto/16 :goto_2

    .line 36
    :sswitch_data_0
    .sparse-switch
        -0x7c200ac5 -> :sswitch_1
        0x56d76835 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 48
    :sswitch_data_1
    .sparse-switch
        -0x7c7fd86c -> :sswitch_6
        -0x779c52af -> :sswitch_5
        -0x468b4c30 -> :sswitch_4
        -0x345a68f1 -> :sswitch_2
        -0x335937ac -> :sswitch_7
        -0x2c27e2fb -> :sswitch_b
        -0xe87c107 -> :sswitch_c
        0x2f44bd47 -> :sswitch_3
        0x3a15f257 -> :sswitch_a
        0x55a3952d -> :sswitch_8
        0x5f8aa45a -> :sswitch_d
        0x75efa3e8 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public getAppBodyJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;->appBodyJson:Lorg/json/JSONObject;

    return-object v0
.end method
