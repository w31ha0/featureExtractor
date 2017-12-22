.class Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$3;
.super Ljava/lang/Object;
.source "SearchQueryDetailsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/LoggingScrollView$OnScrollStopListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->fireImpressionEvents()V

    .line 166
    return-void
.end method
