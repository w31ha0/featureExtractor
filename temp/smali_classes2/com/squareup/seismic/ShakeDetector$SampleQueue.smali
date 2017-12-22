.class Lcom/squareup/seismic/ShakeDetector$SampleQueue;
.super Ljava/lang/Object;
.source "ShakeDetector.java"


# instance fields
.field private acceleratingCount:I

.field private newest:Lcom/squareup/seismic/ShakeDetector$Sample;

.field private oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

.field private final pool:Lcom/squareup/seismic/ShakeDetector$SamplePool;

.field private sampleCount:I


# virtual methods
.method add(JZ)V
    .locals 3

    .prologue
    .line 141
    const-wide/32 v0, 0x1dcd6500

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->purge(J)V

    .line 144
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->pool:Lcom/squareup/seismic/ShakeDetector$SamplePool;

    invoke-virtual {v0}, Lcom/squareup/seismic/ShakeDetector$SamplePool;->acquire()Lcom/squareup/seismic/ShakeDetector$Sample;

    move-result-object v0

    .line 145
    iput-wide p1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->timestamp:J

    .line 146
    iput-boolean p3, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->accelerating:Z

    .line 147
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->next:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 148
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->newest:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->newest:Lcom/squareup/seismic/ShakeDetector$Sample;

    iput-object v0, v1, Lcom/squareup/seismic/ShakeDetector$Sample;->next:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 151
    :cond_0
    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->newest:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 152
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-nez v1, :cond_1

    .line 153
    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 157
    :cond_1
    iget v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    .line 158
    if-eqz p3, :cond_2

    .line 159
    iget v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->acceleratingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->acceleratingCount:I

    .line 161
    :cond_2
    return-void
.end method

.method clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 167
    iget-object v1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->next:Lcom/squareup/seismic/ShakeDetector$Sample;

    iput-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 168
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->pool:Lcom/squareup/seismic/ShakeDetector$SamplePool;

    invoke-virtual {v1, v0}, Lcom/squareup/seismic/ShakeDetector$SamplePool;->release(Lcom/squareup/seismic/ShakeDetector$Sample;)V

    goto :goto_0

    .line 170
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->newest:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 171
    iput v2, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    .line 172
    iput v2, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->acceleratingCount:I

    .line 173
    return-void
.end method

.method isShaking()Z
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->newest:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->newest:Lcom/squareup/seismic/ShakeDetector$Sample;

    iget-wide v0, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->timestamp:J

    iget-object v2, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    iget-wide v2, v2, Lcom/squareup/seismic/ShakeDetector$Sample;->timestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xee6b280

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->acceleratingCount:I

    iget v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    shr-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    shr-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method purge(J)V
    .locals 5

    .prologue
    .line 177
    :goto_0
    iget v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    iget-wide v0, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->timestamp:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 181
    iget-boolean v1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->accelerating:Z

    if-eqz v1, :cond_0

    .line 182
    iget v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->acceleratingCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->acceleratingCount:I

    .line 184
    :cond_0
    iget v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    .line 186
    iget-object v1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->next:Lcom/squareup/seismic/ShakeDetector$Sample;

    iput-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 187
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-nez v1, :cond_1

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->newest:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->pool:Lcom/squareup/seismic/ShakeDetector$SamplePool;

    invoke-virtual {v1, v0}, Lcom/squareup/seismic/ShakeDetector$SamplePool;->release(Lcom/squareup/seismic/ShakeDetector$Sample;)V

    goto :goto_0

    .line 192
    :cond_2
    return-void
.end method
