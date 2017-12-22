.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$2;
.super Ljava/lang/Object;
.source "SearchResultsFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;

.field final synthetic val$gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

.field final synthetic val$selectedPosition:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;Lcom/netflix/mediaclient/android/widget/StaticGridView;I)V
    .locals 0

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$2;->this$1:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$2;->val$gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iput p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$2;->val$selectedPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$2;->val$gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$2;->val$gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$2;->val$selectedPosition:I

    .line 1137
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$2;->val$selectedPosition:I

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$2;->val$gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    .line 1139
    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$2;->val$selectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1136
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1142
    return-void
.end method
