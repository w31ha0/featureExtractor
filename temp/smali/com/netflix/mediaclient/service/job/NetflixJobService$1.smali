.class Lcom/netflix/mediaclient/service/job/NetflixJobService$1;
.super Ljava/lang/Object;
.source "NetflixJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/job/NetflixJobService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/job/NetflixJobService;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService$1;->this$0:Lcom/netflix/mediaclient/service/job/NetflixJobService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService$1;->this$0:Lcom/netflix/mediaclient/service/job/NetflixJobService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->access$000(Lcom/netflix/mediaclient/service/job/NetflixJobService;)V

    .line 123
    return-void
.end method
