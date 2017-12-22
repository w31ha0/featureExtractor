.class Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "LaunchActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2$1;-><init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 503
    return-void
.end method
