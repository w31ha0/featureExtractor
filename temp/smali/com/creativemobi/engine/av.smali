.class final Lcom/creativemobi/engine/av;
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
    .line 800
    iput-object p1, p0, Lcom/creativemobi/engine/av;->a:Lcom/creativemobi/engine/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/creativemobi/engine/av;->a:Lcom/creativemobi/engine/k;

    invoke-static {v0}, Lcom/creativemobi/engine/k;->b(Lcom/creativemobi/engine/k;)V

    .line 805
    return-void
.end method
