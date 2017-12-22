.class public abstract Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/MdxMessage;
.source "ControllerMessage.java"


# static fields
.field public static final TYPE_DIALOG_RESPONSE:Ljava/lang/String; = "DIALOG_RESPONSE"

.field public static final TYPE_GET_AUDIO_SUBTITLES:Ljava/lang/String; = "GET_AUDIO_SUBTITLES"

.field public static final TYPE_HANDSHAKE:Ljava/lang/String; = "HANDSHAKE"

.field public static final TYPE_PIN_VERIFICATION_CANCEL:Ljava/lang/String; = "PIN_VERIFICATION_CANCEL"

.field public static final TYPE_PIN_VERIFICATION_RESPONSE:Ljava/lang/String; = "PIN_VERIFICATION_RESPONSE"

.field public static final TYPE_PLAYER_GET_CAPABILITIES:Ljava/lang/String; = "PLAYER_GET_CAPABILITIES"

.field public static final TYPE_PLAYER_GET_CURRENT_STATE:Ljava/lang/String; = "PLAYER_GET_CURRENT_STATE"

.field public static final TYPE_PLAYER_PAUSE:Ljava/lang/String; = "PLAYER_PAUSE"

.field public static final TYPE_PLAYER_PLAY:Ljava/lang/String; = "PLAYER_PLAY"

.field public static final TYPE_PLAYER_RESUME:Ljava/lang/String; = "PLAYER_RESUME"

.field public static final TYPE_PLAYER_SET_AUTO_ADVANCE:Ljava/lang/String; = "PLAYER_SET_AUTO_ADVANCE"

.field public static final TYPE_PLAYER_SET_CURRENT_TIME:Ljava/lang/String; = "PLAYER_SET_CURRENT_TIME"

.field public static final TYPE_PLAYER_SET_VOLUME:Ljava/lang/String; = "PLAYER_SET_VOLUME"

.field public static final TYPE_PLAYER_SKIP:Ljava/lang/String; = "PLAYER_SKIP"

.field public static final TYPE_PLAYER_STOP:Ljava/lang/String; = "PLAYER_STOP"

.field public static final TYPE_POSTPLAY_STOP:Ljava/lang/String; = "POSTPLAY_STOP"

.field public static final TYPE_SET_AUDIO_SUBTITLES:Ljava/lang/String; = "SET_AUDIO_SUBTITLES"


# instance fields
.field private messageString:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "sessionAction=appMessage\r\n"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageString:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "appAction"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageString:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method protected addAppBodyProperty(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "appBody."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageString:Ljava/lang/String;

    .line 49
    return-void
.end method

.method protected addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "appBody."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageString:Ljava/lang/String;

    .line 43
    return-void
.end method

.method protected addAppBodyProperty(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "appBody."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageString:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public getMessageString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    return-object v0
.end method
