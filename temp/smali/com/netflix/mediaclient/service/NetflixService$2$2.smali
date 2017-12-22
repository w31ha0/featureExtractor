.class Lcom/netflix/mediaclient/service/NetflixService$2$2;
.super Ljava/util/ArrayList;
.source "NetflixService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/netflix/mediaclient/service/ServiceAgent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/NetflixService$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService$2;)V
    .locals 1

    .prologue
    .line 437
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$2;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$600(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$700(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$800(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/preapp/PreAppAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1000(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/player/PlayerAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->this$1:Lcom/netflix/mediaclient/service/NetflixService$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$100(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/voip/VoipAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 447
    return-void
.end method
