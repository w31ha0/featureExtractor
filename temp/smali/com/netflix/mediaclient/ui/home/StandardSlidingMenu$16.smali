.class final Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$16;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 878
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$16;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$16;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->showLogoutDialog(Landroid/app/Activity;)V

    .line 882
    return-void
.end method
