.class final Lcom/creativemobi/engine/p;
.super Ljava/lang/Object;
.source "RaceOnlineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/creativemobi/engine/ab;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/ab;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/creativemobi/engine/p;->a:Lcom/creativemobi/engine/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/creativemobi/engine/p;->a:Lcom/creativemobi/engine/ab;

    iget v0, v0, Lcom/creativemobi/engine/ab;->a:I

    iget-object v1, p0, Lcom/creativemobi/engine/p;->a:Lcom/creativemobi/engine/ab;

    invoke-static {v1}, Lcom/creativemobi/engine/ab;->a(Lcom/creativemobi/engine/ab;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/creativemobi/engine/bp;->h(II)[B

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/creativemobi/engine/p;->a:Lcom/creativemobi/engine/ab;

    iget-boolean v1, v1, Lcom/creativemobi/engine/ab;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/creativemobi/engine/p;->a:Lcom/creativemobi/engine/ab;

    invoke-static {v1, v0}, Lcom/creativemobi/engine/ab;->a(Lcom/creativemobi/engine/ab;[B)V

    .line 148
    :cond_0
    return-void
.end method
