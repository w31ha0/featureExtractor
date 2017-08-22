.class Lvpadn/ai$1;
.super Ljava/lang/Object;
.source "VponNativeAdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ai;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/ai;


# direct methods
.method constructor <init>(Lvpadn/ai;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lvpadn/ai$1;->a:Lvpadn/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lvpadn/ai$1;->a:Lvpadn/ai;

    invoke-static {v0}, Lvpadn/ai;->a(Lvpadn/ai;)V

    .line 272
    iget-object v0, p0, Lvpadn/ai$1;->a:Lvpadn/ai;

    invoke-static {v0}, Lvpadn/ai;->b(Lvpadn/ai;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lvpadn/ai$1;->a:Lvpadn/ai;

    invoke-static {v0}, Lvpadn/ai;->b(Lvpadn/ai;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 274
    iget-object v2, p0, Lvpadn/ai$1;->a:Lvpadn/ai;

    iget-object v3, p0, Lvpadn/ai$1;->a:Lvpadn/ai;

    iget-object v0, p0, Lvpadn/ai$1;->a:Lvpadn/ai;

    invoke-static {v0}, Lvpadn/ai;->b(Lvpadn/ai;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lvpadn/ai;->a(Lvpadn/ai;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lvpadn/ai;->b(Lvpadn/ai;Ljava/lang/String;)V

    .line 273
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method
