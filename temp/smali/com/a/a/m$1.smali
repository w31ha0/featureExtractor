.class Lcom/a/a/m$1;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Lcom/a/a/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/m;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/m;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/a/a/m;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/a/a/m$1;->a:Lcom/a/a/m;

    iput-object p2, p0, Lcom/a/a/m$1;->b:Ljava/lang/Object;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/l;)Z
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/a/a/l;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/m$1;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
