.class Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$1;
.super Ljava/lang/Object;
.source "OpenSourceLicensesActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$1;->this$0:Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$1;->this$0:Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 155
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method
