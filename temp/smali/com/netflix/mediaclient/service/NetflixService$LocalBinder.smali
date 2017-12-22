.class public Lcom/netflix/mediaclient/service/NetflixService$LocalBinder;
.super Landroid/os/Binder;
.source "NetflixService.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$LocalBinder;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$LocalBinder;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    return-object v0
.end method
