.class Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$2;
.super Ljava/lang/Object;
.source "ExternalLinkActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$2;->this$0:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$2;->this$0:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 206
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method
