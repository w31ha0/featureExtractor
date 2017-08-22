.class Lcom/adbert/b/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/b/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/b/b;


# direct methods
.method constructor <init>(Lcom/adbert/b/b;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/adbert/b/b$3;->a:Lcom/adbert/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/adbert/b/b$3;->a:Lcom/adbert/b/b;

    iget-object v1, v1, Lcom/adbert/b/b;->e:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->i:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/adbert/b/b$3;->a:Lcom/adbert/b/b;

    iget-object v1, v1, Lcom/adbert/b/b;->c:Lcom/adbert/a/c/a;

    invoke-virtual {v1, v0}, Lcom/adbert/a/c/a;->endingCardAction(I)V

    .line 107
    :cond_0
    return-void

    .line 101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
