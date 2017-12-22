.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$2;
.super Ljava/lang/Object;
.source "RoleDetailsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

.field final synthetic val$video:Lcom/netflix/model/branches/FalkorVideo;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$2;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$2;->val$video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 736
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$2;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$2;->val$video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$2;->val$video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v2}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$2;->val$video:Lcom/netflix/model/branches/FalkorVideo;

    invoke-virtual {v3}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/ui/common/PlayContext;->NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->showMemento(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 739
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$2;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->mementoRDPRelatedExpandedGoToDP:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->rdp:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$2;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 740
    return-void
.end method
