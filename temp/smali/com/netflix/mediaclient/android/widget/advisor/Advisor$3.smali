.class Lcom/netflix/mediaclient/android/widget/advisor/Advisor$3;
.super Ljava/lang/Object;
.source "Advisor.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$3;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$3;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$3;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    invoke-static {v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->access$100(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$3;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$3;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    invoke-static {v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->access$000(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$3;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->isHardDismiss:Z

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->access$200(Z)V

    .line 123
    return-void
.end method
