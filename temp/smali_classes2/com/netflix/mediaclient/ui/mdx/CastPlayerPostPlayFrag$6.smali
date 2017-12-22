.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;
.super Lcom/netflix/mediaclient/ui/rating/Ratings$ThumbRatingWithCLCallback;
.source "CastPlayerPostPlayFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic val$thumbButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;->val$thumbButton:Landroid/view/View;

    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/rating/Ratings$ThumbRatingWithCLCallback;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    return-void
.end method


# virtual methods
.method protected onThumbRatingError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method protected onThumbRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;->val$thumbButton:Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;->val$thumbButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;->val$thumbButton:Landroid/view/View;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Landroid/widget/ImageView;

    move-result-object v3

    if-ne v0, v3, :cond_3

    .line 324
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 329
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 332
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 322
    goto :goto_0

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;->val$thumbButton:Landroid/view/View;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Landroid/widget/ImageView;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 326
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1
.end method
