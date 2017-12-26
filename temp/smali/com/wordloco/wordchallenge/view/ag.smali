.class Lcom/wordloco/wordchallenge/view/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/Home;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/ag;->a:Lcom/wordloco/wordchallenge/view/Home;

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ag;->a:Lcom/wordloco/wordchallenge/view/Home;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wordloco/wordchallenge/view/Home;->a(Lcom/wordloco/wordchallenge/view/Home;I)V

    .line 530
    const/4 v0, 0x1

    return v0
.end method
