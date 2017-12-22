.class Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;
.super Ljava/lang/Object;
.source "RowAdapter.java"

# interfaces
.implements Landroid/support/v7/util/ListUpdateCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 5

    .prologue
    .line 131
    const-string/jumbo v0, "BaseRowAdapter"

    const-string/jumbo v1, "%d item changed at %d, payload is %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "callback.notifyItemRangeChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 138
    return-void
.end method

.method public onInserted(II)V
    .locals 5

    .prologue
    .line 96
    const-string/jumbo v0, "BaseRowAdapter"

    const-string/jumbo v1, "%d item inserted at %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->access$000(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;)I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->access$002(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;I)I

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "callback.notifyItemRangeInserted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->notifyItemRangeInserted(II)V

    .line 104
    return-void
.end method

.method public onMoved(II)V
    .locals 5

    .prologue
    .line 120
    const-string/jumbo v0, "BaseRowAdapter"

    const-string/jumbo v1, "%d item moved to %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "callback.notifyItemMoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->notifyItemMoved(II)V

    .line 127
    return-void
.end method

.method public onRemoved(II)V
    .locals 5

    .prologue
    .line 108
    const-string/jumbo v0, "BaseRowAdapter"

    const-string/jumbo v1, "%d item removed at %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->access$000(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;)I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->access$002(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;I)I

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "callback.notifyItemRangeRemoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->notifyItemRangeRemoved(II)V

    .line 116
    return-void
.end method
