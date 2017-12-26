.class Lcom/wordloco/wordchallenge/view/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/Game;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/Game;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/s;->a:Lcom/wordloco/wordchallenge/view/Game;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/s;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Game;->c(Lcom/wordloco/wordchallenge/view/Game;)V

    .line 315
    return-void
.end method
