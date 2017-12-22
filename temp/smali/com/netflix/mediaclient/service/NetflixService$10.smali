.class Lcom/netflix/mediaclient/service/NetflixService$10;
.super Ljava/lang/Object;
.source "NetflixService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$10;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$10;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2200(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 1631
    return-void
.end method
