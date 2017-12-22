.class Lcom/netflix/mediaclient/ui/details/DetailsActivity$1;
.super Ljava/lang/Object;
.source "DetailsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteractive()V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->endDPTTRSession(Ljava/util/Map;)V

    .line 264
    return-void
.end method
