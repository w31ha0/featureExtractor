.class Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;
.super Ljava/lang/Object;
.source "TextViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;->this$0:Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;->this$0:Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->setAsNotInList()V

    .line 54
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;->this$0:Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    iget-object v1, v1, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;->this$0:Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    iget-object v2, v2, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090278

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 56
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;->this$0:Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    iget-object v1, v1, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;->this$0:Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    iget-object v2, v2, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRemoveFromQueueActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 58
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;->this$0:Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    iget-object v1, v1, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of v1, v1, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;->this$0:Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getActionToken()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;->this$0:Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->access$200(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;->this$0:Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->access$000(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;->this$0:Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->access$100(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->removeVideoFromMyList(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    .line 62
    return-void
.end method
