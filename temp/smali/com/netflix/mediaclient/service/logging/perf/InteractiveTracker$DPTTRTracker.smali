.class public Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$DPTTRTracker;
.super Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;
.source "InteractiveTracker.java"


# static fields
.field public static final ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DP_TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$DPTTRTracker;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$DPTTRTracker;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public shouldTrack(Landroid/widget/ImageView;Lcom/android/volley/Request$Priority;)Z
    .locals 1

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->shouldTrack(Landroid/view/View;Lcom/android/volley/Request$Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
