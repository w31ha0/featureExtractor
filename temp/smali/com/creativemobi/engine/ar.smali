.class final Lcom/creativemobi/engine/ar;
.super Ljava/lang/Object;
.source "RaceView.java"

# interfaces
.implements Lcom/creativemobi/engine/br;


# instance fields
.field private synthetic a:Lcom/creativemobi/engine/w;

.field private synthetic b:Lcom/creativemobi/engine/k;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/w;)V
    .locals 0

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/creativemobi/engine/ar;->b:Lcom/creativemobi/engine/k;

    iput-object p2, p0, Lcom/creativemobi/engine/ar;->a:Lcom/creativemobi/engine/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/creativemobi/engine/cd;)V
    .locals 2

    .prologue
    .line 1706
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 1707
    iget-object v0, p0, Lcom/creativemobi/engine/ar;->b:Lcom/creativemobi/engine/k;

    iget-object v1, p0, Lcom/creativemobi/engine/ar;->a:Lcom/creativemobi/engine/w;

    invoke-static {v0, v1}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/w;)V

    .line 1708
    return-void
.end method
