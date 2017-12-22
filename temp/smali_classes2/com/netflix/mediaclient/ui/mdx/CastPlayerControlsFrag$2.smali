.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;
.super Ljava/lang/Object;
.source "CastPlayerControlsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;->calculateViewDimensions()V

    .line 281
    return-void
.end method

.method private calculateViewDimensions()V
    .locals 5

    .prologue
    .line 293
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    .line 294
    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    .line 295
    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    iget v2, v2, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->numColumns:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    .line 296
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    iget v2, v2, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->numColumns:I

    div-int/2addr v1, v2

    .line 293
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$202(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;I)I

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3fb70a3d    # 1.43f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$302(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;I)I

    .line 299
    return-void
.end method


# virtual methods
.method public createItemView()Landroid/view/View;
    .locals 3

    .prologue
    .line 285
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MementoRelatedView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MementoRelatedView;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Landroid/content/Context;)V

    .line 286
    return-object v0
.end method
