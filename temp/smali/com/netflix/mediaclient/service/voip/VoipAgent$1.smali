.class Lcom/netflix/mediaclient/service/voip/VoipAgent$1;
.super Landroid/telephony/PhoneStateListener;
.source "VoipAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/VoipAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/VoipAgent;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent$1;->this$0:Lcom/netflix/mediaclient/service/voip/VoipAgent;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 47
    packed-switch p1, :pswitch_data_0

    .line 61
    const-string/jumbo v0, "nf_voip_agent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UNKNOWN_STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_0
    const-string/jumbo v0, "nf_voip_agent"

    const-string/jumbo v1, "onCallStateChanged: CALL_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :pswitch_1
    const-string/jumbo v0, "nf_voip_agent"

    const-string/jumbo v1, "onCallStateChanged: CALL_STATE_RINGING"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent$1;->this$0:Lcom/netflix/mediaclient/service/voip/VoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->access$000(Lcom/netflix/mediaclient/service/voip/VoipAgent;)Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent$1;->this$0:Lcom/netflix/mediaclient/service/voip/VoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->access$000(Lcom/netflix/mediaclient/service/voip/VoipAgent;)Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->isCallInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "nf_voip_agent"

    const-string/jumbo v1, "Incoming PSTN call answered, disconnecting VoIP"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent$1;->this$0:Lcom/netflix/mediaclient/service/voip/VoipAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->access$000(Lcom/netflix/mediaclient/service/voip/VoipAgent;)Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->terminate()Z

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
