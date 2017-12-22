.class Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$4;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$4;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$4;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$4;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-class v2, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$4;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void
.end method
