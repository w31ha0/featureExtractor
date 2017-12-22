.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$3;
.super Ljava/lang/Object;
.source "NetflixActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 1636
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$3;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1639
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Handle click on No Network overlay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$3;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleActionOnNoNetworkOverlay()V

    .line 1641
    return-void
.end method
