.class Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;
.super Ljava/lang/Object;
.source "SessionMdxTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

.field final synthetic val$command:Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;->val$command:Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 177
    const-string/jumbo v0, "PLAYER_GET_CAPABILITIES"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;->val$command:Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 178
    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->access$400(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "sendCommand, return cached capbility."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->access$500(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->access$400(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->capability(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string/jumbo v0, "GET_AUDIO_SUBTITLES"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;->val$command:Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;->messageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->access$600(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->useCachedAudioSub()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string/jumbo v0, "SessionMdxTarget"

    const-string/jumbo v1, "sendCommand, return cached audio aubtitles."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->access$600(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;->val$command:Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager;->receivedCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->access$100(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;->val$command:Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$3;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageRequested:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->receiveTargetStateEvent(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;)V

    goto :goto_0
.end method
