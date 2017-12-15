.class final Lcom/creativemobi/engine/as;
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
    .line 427
    iput-object p1, p0, Lcom/creativemobi/engine/as;->a:Lcom/creativemobi/engine/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/creativemobi/engine/cd;)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/creativemobi/engine/as;->a:Lcom/creativemobi/engine/k;

    iget-object v0, v0, Lcom/creativemobi/engine/k;->o:Lcom/creativemobi/engine/cd;

    iget-boolean v0, v0, Lcom/creativemobi/engine/cd;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/cd;->a([I)V

    .line 431
    :cond_0
    return-void

    .line 430
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x1
    .end array-data
.end method
