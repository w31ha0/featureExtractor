.class final Lcom/creativemobi/engine/aq;
.super Ljava/lang/Object;
.source "RaceView.java"

# interfaces
.implements Lcom/creativemobi/engine/br;


# instance fields
.field private synthetic a:Lcom/creativemobi/engine/k;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/k;)V
    .locals 0

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/creativemobi/engine/aq;->a:Lcom/creativemobi/engine/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/creativemobi/engine/cd;)V
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/creativemobi/engine/aq;->a:Lcom/creativemobi/engine/k;

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->H()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/cd;->a([I)V

    .line 1294
    :cond_0
    return-void

    .line 1293
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x1
    .end array-data
.end method
