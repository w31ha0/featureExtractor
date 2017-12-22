.class Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;
.super Ljava/lang/Object;
.source "NrdpSessionPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

.field final synthetic val$event:Lcom/netflix/mediaclient/event/UIEvent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/UIEvent;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->access$000(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;)Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playback session is no longer listen to event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    invoke-interface {v2}, Lcom/netflix/mediaclient/event/UIEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    instance-of v0, v0, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;

    if-eqz v0, :cond_2

    .line 92
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->access$200(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    instance-of v0, v0, Lcom/netflix/mediaclient/event/nrdp/player/OpenComplete;

    if-eqz v0, :cond_3

    .line 94
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/player/OpenComplete;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->access$300(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/OpenComplete;)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    instance-of v0, v0, Lcom/netflix/mediaclient/event/nrdp/player/Buffering;

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->access$400(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Z)V

    goto :goto_0

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    instance-of v0, v0, Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;

    if-eqz v0, :cond_5

    .line 98
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->access$500(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;)V

    goto :goto_0

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    instance-of v0, v0, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;

    if-eqz v0, :cond_6

    .line 100
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->access$600(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;)V

    goto :goto_0

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    instance-of v0, v0, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    instance-of v0, v0, Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;

    if-eqz v0, :cond_7

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;

    .line 104
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->access$700(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;)V

    goto :goto_0

    .line 105
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    instance-of v0, v0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;

    if-eqz v0, :cond_8

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;

    .line 107
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->access$800(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;)V

    goto :goto_0

    .line 108
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    instance-of v0, v0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;

    .line 110
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->access$900(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;)V

    goto/16 :goto_0

    .line 111
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    instance-of v0, v0, Lcom/netflix/mediaclient/event/nrdp/player/UpdateVideoBitrate;

    if-eqz v0, :cond_a

    .line 112
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "got event updateVideoBitrate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    instance-of v0, v0, Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;

    if-eqz v0, :cond_b

    .line 114
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->access$1000(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;)V

    goto/16 :goto_0

    .line 115
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    instance-of v0, v0, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;

    if-eqz v0, :cond_c

    .line 116
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->access$1100(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;)V

    goto/16 :goto_0

    .line 118
    :cond_c
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "event not handled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer$1;->val$event:Lcom/netflix/mediaclient/event/UIEvent;

    invoke-interface {v2}, Lcom/netflix/mediaclient/event/UIEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
