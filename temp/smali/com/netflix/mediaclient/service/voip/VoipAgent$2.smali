.class Lcom/netflix/mediaclient/service/voip/VoipAgent$2;
.super Ljava/lang/Object;
.source "VoipAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/VoipAgent;

.field final synthetic val$cb:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/VoipAgent;Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent$2;->this$0:Lcom/netflix/mediaclient/service/voip/VoipAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent$2;->val$cb:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoipConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent$2;->val$cb:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent$2;->val$cb:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;->onVoipConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 105
    :cond_0
    return-void
.end method
