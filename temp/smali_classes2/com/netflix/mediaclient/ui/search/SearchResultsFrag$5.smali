.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$5;
.super Ljava/lang/Object;
.source "SearchResultsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iput p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 623
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    check-cast p1, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$5;->val$position:I

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$100(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultView;IJ)V

    .line 626
    :cond_0
    return-void
.end method
