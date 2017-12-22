.class Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;
.super Ljava/lang/Object;
.source "ProfileSelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 667
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$600(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$600(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 668
    :cond_0
    const-string/jumbo v0, "ProfileSelectionActivity"

    const-string/jumbo v1, "Invalid profiles set"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$600(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 671
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportAddProfileActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 672
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v1, v5}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 673
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$400(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 674
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$600(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 675
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    goto :goto_0

    .line 678
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportEditProfileActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 679
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$600(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 682
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$600(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    .line 684
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->userChoseToRemember:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    invoke-static {v1, v5, v2, v3, v4}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSelectProfileActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;)V

    .line 686
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startChangeProfile(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V

    .line 687
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$6;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0
.end method
