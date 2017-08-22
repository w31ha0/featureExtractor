.class Lcom/google/android/exoplayer2/trackselection/TrackSelector$1;
.super Ljava/lang/Object;
.source "TrackSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/trackselection/TrackSelector;->notifyTrackSelectionsChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelections;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field final synthetic val$activeSelections:Lcom/google/android/exoplayer2/trackselection/TrackSelections;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/trackselection/TrackSelections;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .prologue
    .line 135
    .local p0, "this":Lcom/google/android/exoplayer2/trackselection/TrackSelector$1;, "Lcom/google/android/exoplayer2/trackselection/TrackSelector$1;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector$1;->this$0:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector$1;->val$activeSelections:Lcom/google/android/exoplayer2/trackselection/TrackSelections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 138
    .local p0, "this":Lcom/google/android/exoplayer2/trackselection/TrackSelector$1;, "Lcom/google/android/exoplayer2/trackselection/TrackSelector$1;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector$1;->this$0:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->access$000(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/TrackSelector$EventListener;

    .line 139
    .local v0, "listener":Lcom/google/android/exoplayer2/trackselection/TrackSelector$EventListener;, "Lcom/google/android/exoplayer2/trackselection/TrackSelector$EventListener<-TT;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector$1;->val$activeSelections:Lcom/google/android/exoplayer2/trackselection/TrackSelections;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelector$EventListener;->onTrackSelectionsChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelections;)V

    goto :goto_0

    .line 141
    .end local v0    # "listener":Lcom/google/android/exoplayer2/trackselection/TrackSelector$EventListener;, "Lcom/google/android/exoplayer2/trackselection/TrackSelector$EventListener<-TT;>;"
    :cond_0
    return-void
.end method
