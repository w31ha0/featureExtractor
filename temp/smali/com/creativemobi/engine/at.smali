.class final Lcom/creativemobi/engine/at;
.super Ljava/lang/Object;
.source "RaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/creativemobi/engine/k;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/k;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/creativemobi/engine/at;->a:Lcom/creativemobi/engine/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 472
    iget-object v0, p0, Lcom/creativemobi/engine/at;->a:Lcom/creativemobi/engine/k;

    iget v0, v0, Lcom/creativemobi/engine/k;->b:I

    .line 474
    iget-object v1, p0, Lcom/creativemobi/engine/at;->a:Lcom/creativemobi/engine/k;

    iget-boolean v1, v1, Lcom/creativemobi/engine/k;->a:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/creativemobi/engine/bd;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/creativemobi/engine/at;->a:Lcom/creativemobi/engine/k;

    iget-object v2, v2, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->n()I

    move-result v2

    iget-object v3, p0, Lcom/creativemobi/engine/at;->a:Lcom/creativemobi/engine/k;

    iget-object v3, v3, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->B()I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lcom/creativemobi/engine/bp;->a(Ljava/lang/String;III)V

    .line 476
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Z)V

    .line 477
    return-void
.end method
