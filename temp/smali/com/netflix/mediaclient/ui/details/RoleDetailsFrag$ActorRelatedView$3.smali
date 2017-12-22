.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$3;
.super Ljava/lang/Object;
.source "RoleDetailsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$3;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 751
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$3;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1000(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->clearItemChecked()V

    .line 754
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$3;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRDPRelatedExpand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->rdp:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$3;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 755
    return-void
.end method
