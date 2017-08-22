.class Lcom/adbert/b/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/b/d;-><init>(Landroid/content/Context;Lcom/adbert/a/c/a;Lcom/adbert/a/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/a/c/a;

.field final synthetic b:Lcom/adbert/b/d;


# direct methods
.method constructor <init>(Lcom/adbert/b/d;Lcom/adbert/a/c/a;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adbert/b/d$4;->b:Lcom/adbert/b/d;

    iput-object p2, p0, Lcom/adbert/b/d$4;->a:Lcom/adbert/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/adbert/b/d$4;->b:Lcom/adbert/b/d;

    iget-object v1, v1, Lcom/adbert/b/d;->c:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->i:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/adbert/b/d$4;->a:Lcom/adbert/a/c/a;

    invoke-virtual {v1, v0}, Lcom/adbert/a/c/a;->endingCardAction(I)V

    .line 73
    :cond_0
    return-void

    .line 67
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
