.class final Lcom/creativemobi/engine/bm;
.super Ljava/lang/Object;
.source "RaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/creativemobi/engine/ap;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/ap;)V
    .locals 0

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/creativemobi/engine/bm;->a:Lcom/creativemobi/engine/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/creativemobi/engine/bm;->a:Lcom/creativemobi/engine/ap;

    iget-object v0, v0, Lcom/creativemobi/engine/ap;->a:Lcom/creativemobi/engine/k;

    invoke-static {v0}, Lcom/creativemobi/engine/k;->d(Lcom/creativemobi/engine/k;)V

    .line 1077
    return-void
.end method
