.class Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;
.super Landroid/support/v4/view/PagerAdapter;
.source "MementoFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method createActorView(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 293
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Landroid/content/Context;)V

    .line 294
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->updateDetails(I)V

    .line 295
    return-object v0
.end method

.method createRelatedTitleView(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 299
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Landroid/content/Context;)V

    .line 300
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->updateDetails(I)V

    .line 301
    return-object v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 305
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 306
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 280
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 267
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->createActorView(I)Landroid/view/View;

    move-result-object v0

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "POS_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 276
    return-object v0

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$4;->createRelatedTitleView(I)Landroid/view/View;

    move-result-object v0

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 285
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
