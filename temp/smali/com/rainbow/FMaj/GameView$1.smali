.class Lcom/rainbow/FMaj/GameView$1;
.super Ljava/lang/Object;
.source "GameView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rainbow/FMaj/GameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rainbow/FMaj/GameView;


# direct methods
.method constructor <init>(Lcom/rainbow/FMaj/GameView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rainbow/FMaj/GameView$1;->this$0:Lcom/rainbow/FMaj/GameView;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/rainbow/FMaj/GameView$1;->this$0:Lcom/rainbow/FMaj/GameView;

    invoke-virtual {v0}, Lcom/rainbow/FMaj/GameView;->myExit()V

    .line 231
    return-void
.end method
