.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$1;
.super Ljava/lang/Object;
.source "SearchResultsFrag.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 374
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    check-cast p2, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$000(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultView;IJ)V

    .line 377
    :cond_0
    return-void
.end method
