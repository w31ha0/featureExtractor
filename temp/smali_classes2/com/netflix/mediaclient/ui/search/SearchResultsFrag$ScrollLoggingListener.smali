.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ScrollLoggingListener;
.super Ljava/lang/Object;
.source "SearchResultsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/LoggingScrollView$OnScrollStopListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ScrollLoggingListener;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ScrollLoggingListener;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->fireImpressionEvents()V

    .line 324
    return-void
.end method
