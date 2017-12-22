.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MementoRelatedView$1;
.super Ljava/lang/Object;
.source "CastPlayerControlsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MementoRelatedView;

.field final synthetic val$video:Lcom/netflix/mediaclient/servicemgr/interface_/Video;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MementoRelatedView;Lcom/netflix/mediaclient/servicemgr/interface_/Video;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MementoRelatedView$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MementoRelatedView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MementoRelatedView$1;->val$video:Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MementoRelatedView$1;->this$1:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MementoRelatedView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MementoRelatedView;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MementoRelatedView$1;->val$video:Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MementoRelatedView$1;->val$video:Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MementoRelatedView$1;->val$video:Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/ui/common/PlayContext;->NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->showMemento(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 247
    return-void
.end method
