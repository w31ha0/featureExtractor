.class Lvpadn/bv$2;
.super Ljava/lang/Object;
.source "ActionButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/bv;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/bv;


# direct methods
.method constructor <init>(Lvpadn/bv;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lvpadn/bv$2;->a:Lvpadn/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lvpadn/bv$2;->a:Lvpadn/bv;

    iget-object v0, v0, Lvpadn/bv;->b:Lvpadn/by;

    invoke-interface {v0}, Lvpadn/by;->c()V

    .line 66
    iget-object v0, p0, Lvpadn/bv$2;->a:Lvpadn/bv;

    invoke-virtual {v0}, Lvpadn/bv;->a()V

    .line 67
    iget-object v0, p0, Lvpadn/bv$2;->a:Lvpadn/bv;

    invoke-static {v0}, Lvpadn/bv;->a(Lvpadn/bv;)Lvpadn/bv$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lvpadn/bv$2;->a:Lvpadn/bv;

    invoke-static {v0}, Lvpadn/bv;->a(Lvpadn/bv;)Lvpadn/bv$a;

    move-result-object v0

    iget-object v1, p0, Lvpadn/bv$2;->a:Lvpadn/bv;

    invoke-interface {v0, v1}, Lvpadn/bv$a;->a(Lvpadn/bv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method
