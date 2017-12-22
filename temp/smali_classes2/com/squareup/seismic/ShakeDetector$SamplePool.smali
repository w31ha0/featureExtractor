.class Lcom/squareup/seismic/ShakeDetector$SamplePool;
.super Ljava/lang/Object;
.source "ShakeDetector.java"


# instance fields
.field private head:Lcom/squareup/seismic/ShakeDetector$Sample;


# virtual methods
.method acquire()Lcom/squareup/seismic/ShakeDetector$Sample;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SamplePool;->head:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 236
    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/squareup/seismic/ShakeDetector$Sample;

    invoke-direct {v0}, Lcom/squareup/seismic/ShakeDetector$Sample;-><init>()V

    .line 242
    :goto_0
    return-object v0

    .line 240
    :cond_0
    iget-object v1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->next:Lcom/squareup/seismic/ShakeDetector$Sample;

    iput-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SamplePool;->head:Lcom/squareup/seismic/ShakeDetector$Sample;

    goto :goto_0
.end method

.method release(Lcom/squareup/seismic/ShakeDetector$Sample;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SamplePool;->head:Lcom/squareup/seismic/ShakeDetector$Sample;

    iput-object v0, p1, Lcom/squareup/seismic/ShakeDetector$Sample;->next:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 248
    iput-object p1, p0, Lcom/squareup/seismic/ShakeDetector$SamplePool;->head:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 249
    return-void
.end method
