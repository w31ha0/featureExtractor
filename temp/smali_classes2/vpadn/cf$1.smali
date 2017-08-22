.class Lvpadn/cf$1;
.super Ljava/lang/Object;
.source "FuncButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cf;-><init>(Lvpadn/cs;Ljava/lang/String;Lvpadn/by;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cf;


# direct methods
.method constructor <init>(Lvpadn/cf;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lvpadn/cf$1;->a:Lvpadn/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lvpadn/cf$1;->a:Lvpadn/cf;

    iget-object v0, v0, Lvpadn/cf;->d:Lvpadn/by;

    invoke-interface {v0}, Lvpadn/by;->c()V

    .line 53
    iget-object v0, p0, Lvpadn/cf$1;->a:Lvpadn/cf;

    invoke-virtual {v0}, Lvpadn/cf;->a()V

    .line 54
    iget-object v0, p0, Lvpadn/cf$1;->a:Lvpadn/cf;

    invoke-static {v0}, Lvpadn/cf;->a(Lvpadn/cf;)Lvpadn/cf$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lvpadn/cf$1;->a:Lvpadn/cf;

    invoke-static {v0}, Lvpadn/cf;->a(Lvpadn/cf;)Lvpadn/cf$a;

    move-result-object v0

    iget-object v1, p0, Lvpadn/cf$1;->a:Lvpadn/cf;

    invoke-interface {v0, v1}, Lvpadn/cf$a;->a(Lvpadn/cf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method
