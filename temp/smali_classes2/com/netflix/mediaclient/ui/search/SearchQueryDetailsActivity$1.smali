.class Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$1;
.super Ljava/lang/Object;
.source "SearchQueryDetailsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->fireImpressionEvents()V

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->access$000(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)Lcom/netflix/mediaclient/android/widget/StaticGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->access$000(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)Lcom/netflix/mediaclient/android/widget/StaticGridView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 142
    :cond_0
    return-void
.end method
