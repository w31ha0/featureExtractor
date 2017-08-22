.class Lcom/adbert/b/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/b/c;->setVideoView(Landroid/view/ViewGroup;)V
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
    .line 228
    iput-object p1, p0, Lcom/adbert/b/c$4;->a:Lcom/adbert/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/adbert/b/c$4;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->c(Lcom/adbert/b/c;)Lcom/adbert/a/a/a;

    move-result-object v1

    iget-object v0, p0, Lcom/adbert/b/c$4;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->c(Lcom/adbert/b/c;)Lcom/adbert/a/a/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adbert/a/a/a;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/adbert/a/a/a;->p:Z

    .line 233
    iget-object v0, p0, Lcom/adbert/b/c$4;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->d(Lcom/adbert/b/c;)V

    .line 234
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
