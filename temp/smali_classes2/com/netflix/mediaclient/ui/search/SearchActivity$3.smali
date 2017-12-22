.class Lcom/netflix/mediaclient/ui/search/SearchActivity$3;
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
    .line 233
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 236
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 237
    const-string/jumbo v0, "eballot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string/jumbo v0, "SearchActivity"

    const-string/jumbo v1, "queryTextChanges: doOnNext %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$300(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/search/utils/SearchLogUtils;->reportSearchThrottleSessionStarted(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$302(Lcom/netflix/mediaclient/ui/search/SearchActivity;J)J

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$100(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->speech:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$500(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/search/utils/SearchLogUtils;->reportSearchEditChange(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;)V

    .line 246
    return-void

    .line 244
    :cond_1
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->keyboard:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    goto :goto_0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 233
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;->accept(Ljava/lang/CharSequence;)V

    return-void
.end method
