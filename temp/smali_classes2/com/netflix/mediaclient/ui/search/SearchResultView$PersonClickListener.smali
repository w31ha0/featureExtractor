.class Lcom/netflix/mediaclient/ui/search/SearchResultView$PersonClickListener;
.super Ljava/lang/Object;
.source "SearchResultView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final query:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchResultView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$PersonClickListener;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$PersonClickListener;->id:Ljava/lang/String;

    .line 290
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$PersonClickListener;->name:Ljava/lang/String;

    .line 291
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$PersonClickListener;->query:Ljava/lang/String;

    .line 292
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$PersonClickListener;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;->PERSON:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$PersonClickListener;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$PersonClickListener;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$PersonClickListener;->query:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$PersonClickListener;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->access$000(Lcom/netflix/mediaclient/ui/search/SearchResultView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$PersonClickListener;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    .line 297
    invoke-static {v6}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->access$100(Lcom/netflix/mediaclient/ui/search/SearchResultView;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v6

    .line 296
    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->show(Landroid/app/Activity;Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 298
    return-void
.end method
