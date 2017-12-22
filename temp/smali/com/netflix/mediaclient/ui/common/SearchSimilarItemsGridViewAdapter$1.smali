.class Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter$1;
.super Ljava/lang/Object;
.source "SearchSimilarItemsGridViewAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->access$000(Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;)Landroid/widget/GridView;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 53
    const-string/jumbo v2, "SearchSimilarItemsGridViewAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "View dimens: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->access$200(Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;)I

    move-result v3

    div-int/2addr v1, v3

    int-to-double v4, v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getVideoImageAspectRatio()D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v1, v4

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->access$102(Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;I)I

    .line 56
    const-string/jumbo v1, "SearchSimilarItemsGridViewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "imgHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->access$100(Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 59
    return-void
.end method
