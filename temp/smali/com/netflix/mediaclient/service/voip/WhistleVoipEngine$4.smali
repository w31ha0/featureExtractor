.class Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$4;
.super Ljava/lang/Object;
.source "WhistleVoipEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

.field final synthetic val$line:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;I)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$4;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iput p2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$4;->val$line:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 820
    invoke-static {}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->setUrgentAudioThreadPriority()V

    .line 821
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$4;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->access$100(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)Lcom/vailsys/whistleengine/WhistleEngine;

    move-result-object v0

    if-nez v0, :cond_0

    .line 822
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Engine is null, what happend"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$4;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->access$500(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)V

    .line 827
    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$4;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->access$100(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)Lcom/vailsys/whistleengine/WhistleEngine;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$4;->val$line:I

    invoke-virtual {v0, v1}, Lcom/vailsys/whistleengine/WhistleEngine;->hangup(I)V

    goto :goto_0
.end method
