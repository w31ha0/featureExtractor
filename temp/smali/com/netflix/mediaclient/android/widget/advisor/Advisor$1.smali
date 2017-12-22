.class Lcom/netflix/mediaclient/android/widget/advisor/Advisor$1;
.super Ljava/lang/Object;
.source "Advisor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$1;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$1;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->timeSinceLastShow:J

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$1;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->anchor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$1;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$1;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->anchor:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$1;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$1;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    invoke-static {v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->access$000(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$1;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    iget v2, v2, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->durationInSeconds:F

    float-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$1;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$1;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x800033

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
