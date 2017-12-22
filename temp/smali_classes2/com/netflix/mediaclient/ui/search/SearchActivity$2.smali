.class Lcom/netflix/mediaclient/ui/search/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 253
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$100(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$200(Lcom/netflix/mediaclient/ui/search/SearchActivity;Ljava/lang/String;)V

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$300(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$300(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/search/utils/SearchLogUtils;->reportSearchThrottleSessionEnded(Landroid/content/Context;J)V

    .line 265
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v1, v4, v5}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$302(Lcom/netflix/mediaclient/ui/search/SearchActivity;J)J

    .line 268
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$400(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$400(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clearSelectedStack()V

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$400(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clearGridSelected()V

    .line 272
    :cond_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 250
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->accept(Ljava/lang/CharSequence;)V

    return-void
.end method
