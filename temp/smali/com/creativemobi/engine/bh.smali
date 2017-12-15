.class final Lcom/creativemobi/engine/bh;
.super Ljava/lang/Object;
.source "TournamentResultView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:I

.field private synthetic c:Lcom/creativemobi/engine/b;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/b;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/creativemobi/engine/bh;->c:Lcom/creativemobi/engine/b;

    iput-object p2, p0, Lcom/creativemobi/engine/bh;->a:Ljava/lang/String;

    iput p3, p0, Lcom/creativemobi/engine/bh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/creativemobi/engine/bh;->c:Lcom/creativemobi/engine/b;

    iget-object v0, v0, Lcom/creativemobi/engine/b;->b:Lcom/creativemobi/engine/bl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Achievement unlocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/bh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/bh;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RP)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/creativemobi/engine/bl;->a(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/creativemobi/engine/bh;->c:Lcom/creativemobi/engine/b;

    iget-object v0, v0, Lcom/creativemobi/engine/b;->b:Lcom/creativemobi/engine/bl;

    iget v1, p0, Lcom/creativemobi/engine/bh;->b:I

    invoke-interface {v0, v1}, Lcom/creativemobi/engine/bl;->f(I)V

    .line 116
    return-void
.end method
