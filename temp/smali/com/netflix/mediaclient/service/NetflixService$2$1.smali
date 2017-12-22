.class Lcom/netflix/mediaclient/service/NetflixService$2$1;
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
    .line 428
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$1;->this$1:Lcom/netflix/mediaclient/service/NetflixService$2;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2$1;->this$1:Lcom/netflix/mediaclient/service/NetflixService$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$200(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/error/ErrorAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$2$1;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2$1;->this$1:Lcom/netflix/mediaclient/service/NetflixService$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$300(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$2$1;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$2$1;->this$1:Lcom/netflix/mediaclient/service/NetflixService$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/NetflixService$2;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$400(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NetflixService$2$1;->add(Ljava/lang/Object;)Z

    .line 434
    return-void
.end method
