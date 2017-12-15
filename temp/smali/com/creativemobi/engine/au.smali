.class final Lcom/creativemobi/engine/au;
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
    .line 791
    iput-object p1, p0, Lcom/creativemobi/engine/au;->a:Lcom/creativemobi/engine/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 794
    iget-object v0, p0, Lcom/creativemobi/engine/au;->a:Lcom/creativemobi/engine/k;

    invoke-static {v0}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/k;)Lcom/creativemobi/engine/bl;

    move-result-object v0

    const-string v1, "Level %1$d boss defeated!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/creativemobi/engine/au;->a:Lcom/creativemobi/engine/k;

    iget v4, v4, Lcom/creativemobi/engine/k;->j:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/creativemobi/engine/bl;->a(Ljava/lang/String;)V

    .line 795
    return-void
.end method
