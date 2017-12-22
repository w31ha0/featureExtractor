.class Lcom/netflix/mediaclient/service/job/NetflixJobService$2;
.super Landroid/content/BroadcastReceiver;
.source "NetflixJobService.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/job/NetflixJobService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/job/NetflixJobService;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService$2;->this$0:Lcom/netflix/mediaclient/service/job/NetflixJobService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobService$2;->this$0:Lcom/netflix/mediaclient/service/job/NetflixJobService;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/job/NetflixJobService;->access$100(Lcom/netflix/mediaclient/service/job/NetflixJobService;Landroid/content/Intent;)V

    .line 174
    return-void
.end method
