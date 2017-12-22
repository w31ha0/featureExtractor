.class Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$2;
.super Ljava/util/TimerTask;
.source "LinphoneVoipEngine.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;

.field final synthetic val$safeRunnable:Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$IterateRunnable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$IterateRunnable;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$2;->this$0:Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$2;->val$safeRunnable:Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$IterateRunnable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$2;->this$0:Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->access$000(Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;)Lorg/linphone/core/LinphoneCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    invoke-static {}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$2;->val$safeRunnable:Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$IterateRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    :cond_0
    return-void
.end method
