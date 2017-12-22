.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;
.super Ljava/lang/Object;
.source "SearchResultsFrag.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

.field final synthetic val$gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/android/widget/StaticGridView;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;->val$gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->fireGridViewVideosImpressionEvents()V

    .line 519
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;->val$gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;->val$gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 522
    :cond_0
    return-void
.end method
