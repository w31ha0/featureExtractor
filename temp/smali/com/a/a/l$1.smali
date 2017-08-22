.class Lcom/a/a/l$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/l;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/l;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:J


# direct methods
.method constructor <init>(Lcom/a/a/l;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/a/a/l$1;->a:Lcom/a/a/l;

    iput-object p2, p0, Lcom/a/a/l$1;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/a/a/l$1;->c:J

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/a/a/l$1;->a:Lcom/a/a/l;

    invoke-static {v0}, Lcom/a/a/l;->a(Lcom/a/a/l;)Lcom/a/a/t$a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/l$1;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/a/a/l$1;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/a/t$a;->a(Ljava/lang/String;J)V

    .line 236
    iget-object v0, p0, Lcom/a/a/l$1;->a:Lcom/a/a/l;

    invoke-static {v0}, Lcom/a/a/l;->a(Lcom/a/a/l;)Lcom/a/a/t$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/t$a;->a(Ljava/lang/String;)V

    .line 237
    return-void
.end method
