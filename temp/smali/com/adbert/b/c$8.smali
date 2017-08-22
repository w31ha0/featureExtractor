.class Lcom/adbert/b/c$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/b/c;


# direct methods
.method constructor <init>(Lcom/adbert/b/c;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/adbert/b/c$8;->a:Lcom/adbert/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/adbert/b/c$8;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->e(Lcom/adbert/b/c;)Lcom/adbert/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/adbert/b/c$8;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->e(Lcom/adbert/b/c;)Lcom/adbert/b/h;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adbert/b/h;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
