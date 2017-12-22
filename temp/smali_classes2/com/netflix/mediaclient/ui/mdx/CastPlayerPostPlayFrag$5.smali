.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$5;
.super Ljava/lang/Object;
.source "CastPlayerPostPlayFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 282
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v3

    .line 284
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v2

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;ILandroid/view/View;I)V

    .line 293
    :cond_0
    :goto_1
    return-void

    .line 286
    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v2

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;ILandroid/view/View;I)V

    goto :goto_1

    .line 289
    :cond_3
    const/4 v5, 0x1

    goto :goto_2
.end method
