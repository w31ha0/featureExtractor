.class final Lcom/creativemobi/engine/am;
.super Ljava/lang/Object;
.source "RacingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/creativemobi/engine/bp;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/bp;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/creativemobi/engine/am;->a:Lcom/creativemobi/engine/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/creativemobi/engine/am;->a:Lcom/creativemobi/engine/bp;

    invoke-static {}, Lcom/creativemobi/engine/bp;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bp;->g(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/creativemobi/engine/bp;->t()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {v0}, Lcom/creativemobi/engine/bp;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/am;->a:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->p()V

    .line 230
    return-void
.end method
