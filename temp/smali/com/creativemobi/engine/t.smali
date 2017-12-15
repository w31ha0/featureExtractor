.class final Lcom/creativemobi/engine/t;
.super Ljava/lang/Object;
.source "ProLeagueView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/creativemobi/engine/bd;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/bd;I)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/creativemobi/engine/t;->b:Lcom/creativemobi/engine/bd;

    iput p2, p0, Lcom/creativemobi/engine/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 361
    iget v0, p0, Lcom/creativemobi/engine/t;->a:I

    invoke-static {v0}, Lcom/creativemobi/engine/bp;->h(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/creativemobi/engine/t;->b:Lcom/creativemobi/engine/bd;

    iget-object v1, v1, Lcom/creativemobi/engine/bd;->b:[Ljava/lang/String;

    iget v2, p0, Lcom/creativemobi/engine/t;->a:I

    aput-object v0, v1, v2

    .line 363
    if-eqz v0, :cond_0

    .line 364
    iget-object v1, p0, Lcom/creativemobi/engine/t;->b:Lcom/creativemobi/engine/bd;

    iget-object v2, p0, Lcom/creativemobi/engine/t;->b:Lcom/creativemobi/engine/bd;

    iget v3, p0, Lcom/creativemobi/engine/t;->a:I

    invoke-static {v2, v0, v3}, Lcom/creativemobi/engine/bd;->a(Lcom/creativemobi/engine/bd;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/creativemobi/engine/bd;->a:Ljava/util/ArrayList;

    .line 366
    :cond_0
    return-void
.end method
