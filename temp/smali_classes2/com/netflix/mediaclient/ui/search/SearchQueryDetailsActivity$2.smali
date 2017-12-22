.class Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$2;
.super Ljava/lang/Object;
.source "SearchQueryDetailsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 151
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->access$000(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)Lcom/netflix/mediaclient/android/widget/StaticGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->fireImpressionEvents()V

    .line 154
    :cond_0
    return-void
.end method
