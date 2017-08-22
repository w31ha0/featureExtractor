.class Lcom/adbert/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/b/b;->b()V
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
    .line 60
    iput-object p1, p0, Lcom/adbert/b/b$1;->a:Lcom/adbert/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adbert/b/b$1;->a:Lcom/adbert/b/b;

    iget-object v0, v0, Lcom/adbert/b/b;->c:Lcom/adbert/a/c/a;

    invoke-virtual {v0}, Lcom/adbert/a/c/a;->finish()V

    .line 65
    return-void
.end method
