.class Lcom/netflix/mediaclient/service/NetflixService$NotifyServiceReadyInitCallback;
.super Ljava/lang/Object;
.source "NetflixService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/NetflixService$InitCallback;


# instance fields
.field private final clientId:I

.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;I)V
    .locals 0

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$NotifyServiceReadyInitCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1511
    iput p2, p0, Lcom/netflix/mediaclient/service/NetflixService$NotifyServiceReadyInitCallback;->clientId:I

    .line 1512
    return-void
.end method


# virtual methods
.method public onInitComplete()V
    .locals 3

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$NotifyServiceReadyInitCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$NotifyServiceReadyInitCallback;->clientId:I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/NetflixService$NotifyServiceReadyInitCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/NetflixService;->access$1500(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/NetflixService;->access$2100(Lcom/netflix/mediaclient/service/NetflixService;ILcom/netflix/mediaclient/android/app/Status;)V

    .line 1517
    return-void
.end method
