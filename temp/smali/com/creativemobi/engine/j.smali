.class final Lcom/creativemobi/engine/j;
.super Ljava/lang/Object;
.source "RaceView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:F

.field private synthetic d:Lcom/creativemobi/engine/k;


# direct methods
.method public constructor <init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/w;Lcom/creativemobi/engine/cd;Ljava/lang/String;FF)V
    .locals 3

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/creativemobi/engine/j;->d:Lcom/creativemobi/engine/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    iput p6, p0, Lcom/creativemobi/engine/j;->c:F

    .line 1345
    iput p5, p0, Lcom/creativemobi/engine/j;->b:F

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/j;->a:Ljava/lang/String;

    .line 1347
    iget-object v0, p0, Lcom/creativemobi/engine/j;->a:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/cd;Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    .line 1348
    invoke-virtual {p0, p2}, Lcom/creativemobi/engine/j;->a(Lcom/creativemobi/engine/w;)V

    .line 1349
    return-void
.end method

.method public constructor <init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/w;Ljava/lang/String;FF)V
    .locals 3

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/creativemobi/engine/j;->d:Lcom/creativemobi/engine/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1352
    iput p5, p0, Lcom/creativemobi/engine/j;->c:F

    .line 1353
    iput p4, p0, Lcom/creativemobi/engine/j;->b:F

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/j;->a:Ljava/lang/String;

    .line 1355
    iget-object v0, p0, Lcom/creativemobi/engine/j;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1, p4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1356
    invoke-virtual {p0, p2}, Lcom/creativemobi/engine/j;->a(Lcom/creativemobi/engine/w;)V

    .line 1357
    return-void
.end method


# virtual methods
.method public final a(Lcom/creativemobi/engine/w;)V
    .locals 3

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/creativemobi/engine/j;->d:Lcom/creativemobi/engine/k;

    iget v1, p0, Lcom/creativemobi/engine/j;->c:F

    invoke-virtual {v0, p1, v1}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/w;F)F

    move-result v0

    .line 1361
    iget-object v1, p0, Lcom/creativemobi/engine/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    .line 1363
    const/high16 v2, -0x3bb80000    # -800.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/creativemobi/engine/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1368
    :goto_0
    return-void

    .line 1366
    :cond_0
    iget v2, p0, Lcom/creativemobi/engine/j;->b:F

    invoke-virtual {v1, v0, v2}, Lcom/creativemobi/engine/cd;->b(FF)V

    goto :goto_0
.end method
