.class Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$1;
.super Ljava/lang/Object;
.source "InteractiveTracker.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$1;->this$0:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$1;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 84
    const-string/jumbo v0, "InteractiveTracker"

    const-string/jumbo v1, "onPreDraw"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$1;->this$0:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$1;->this$0:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->access$000(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v0, "InteractiveTracker"

    const-string/jumbo v1, "ALL IMAGES LOADED!!!.. before first "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$1;->this$0:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->access$100(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;)V

    .line 89
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
