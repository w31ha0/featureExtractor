.class Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$2;
.super Ljava/lang/Object;
.source "WhistleVoipEngine.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$2;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$2;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    check-cast p2, Lcom/vailsys/whistleengine/WhistleEngine$WhistleEngineBinder;

    invoke-virtual {p2}, Lcom/vailsys/whistleengine/WhistleEngine$WhistleEngineBinder;->getService()Lcom/vailsys/whistleengine/WhistleEngine;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->access$102(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngine;

    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$2;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->access$100(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)Lcom/vailsys/whistleengine/WhistleEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->applicationInForeground()V

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$2;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$2;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STARTED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object v1, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$2;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->access$200(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string/jumbo v1, "nf_voip_whistle"

    const-string/jumbo v2, "Failed to start VOIP service"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$2;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->NOT_STARTED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object v1, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 230
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$2;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->access$102(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngine;

    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$2;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$2;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STOPPED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object v1, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    .line 234
    return-void
.end method
