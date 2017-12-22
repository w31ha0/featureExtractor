.class Lcom/netflix/mediaclient/NetflixApplication$3;
.super Ljava/util/TimerTask;
.source "NetflixApplication.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/NetflixApplication;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/NetflixApplication;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$3;->this$0:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication$3;->this$0:Lcom/netflix/mediaclient/NetflixApplication;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->access$102(Lcom/netflix/mediaclient/NetflixApplication;Z)Z

    .line 474
    return-void
.end method
