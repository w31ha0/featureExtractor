.class final Lcom/adbert/a/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/a/i;->b(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/adbert/a/i$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFail(Lcom/adbert/a/c;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/adbert/a/i$2;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/adbert/a/i$2;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 250
    :cond_0
    return-void
.end method

.method public onConnectionSuccess(Lcom/adbert/a/c;)V
    .locals 0

    .prologue
    .line 243
    return-void
.end method
